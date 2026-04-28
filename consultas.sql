#1 - Consulta que busca pedido junto com dados do cliente e o entregador
SELECT p.id_pedido, c.nome AS cliente, e.nome AS entregador, p.status_pedido, p.data_pedido 
	FROM pedidos p
	INNER JOIN clientes c ON p.id_cliente = c.id_cliente
	INNER JOIN entregadores e ON p.id_entregador = e.id_entregador;

#2 - Pedidos que estão "EM ENTREGA" para consulta simples em caso de atraso
SELECT p.id_pedido, c.nome AS cliente, e.nome AS entregador, p.data_pedido, p.status_pedido
	FROM pedidos p 
	INNER JOIN clientes c ON p.id_cliente = c.id_cliente
    INNER JOIN entregadores e ON p.id_entregador = e.id_entregador
    WHERE p.status_pedido = 'EM_ENTREGA';

#3 - Total gasto por cada cliente
SELECT c.nome, SUM(p.valor_total) AS total_gasto 
	FROM clientes c
    LEFT JOIN pedidos p ON c.id_cliente = p.id_cliente
    GROUP BY c.id_cliente
    ORDER BY total_gasto DESC;

#4 - Produto mais vendido
SELECT pr.nome, SUM(ip.quantidade) AS total_vendido
	FROM itens_pedido ip
	INNER JOIN loja_produto lp ON ip.id_loja_produto = lp.id_loja_produto
	INNER JOIN produtos pr ON lp.id_produto = pr.id_produto
	GROUP BY pr.id_produto
	ORDER BY total_vendido DESC;

#5 - Produtos que venderam acima da média de itens pedido
SELECT pr.nome, SUM(ip.quantidade) AS total_vendido
	FROM produtos pr
	INNER JOIN loja_produto lp ON pr.id_produto = lp.id_produto
	INNER JOIN itens_pedido ip ON lp.id_loja_produto = ip.id_loja_produto
	GROUP BY pr.id_produto
	HAVING total_vendido > (
		SELECT AVG(quantidade)
		FROM itens_pedido
	);


#6 - Faturamento por loja
SELECT 
     l.id_loja AS id, l.nome, SUM(ip.quantidade * ip.preco_unitario) AS faturamento
	FROM lojas l
	INNER JOIN loja_produto lp ON l.id_loja = lp.id_loja
	INNER JOIN itens_pedido ip ON lp.id_loja_produto = ip.id_loja_produto
	GROUP BY l.id_loja
	ORDER BY faturamento DESC;

#7 - Valor total do pedido (apenas itens)
WITH total_pedidos AS (
    SELECT 
        id_pedido,
        SUM(quantidade * preco_unitario) AS total
    FROM itens_pedido
    GROUP BY id_pedido
)
SELECT p.id_pedido, c.nome, t.total
	FROM total_pedidos t
	INNER JOIN pedidos p ON t.id_pedido = p.id_pedido
	INNER JOIN clientes c ON p.id_cliente = c.id_cliente;
	
    
#8 - Pedidos com pagamento aprovado
SELECT p.id_pedido, c.nome, pg.tipo_pagamento, p.valor_total
	FROM pedidos p
	INNER JOIN clientes c ON p.id_cliente = c.id_cliente
	INNER JOIN pagamentos pg ON p.id_pedido = pg.id_pedido
	WHERE pg.status_pagamento = 'APROVADO';

#9 - Produtos com baixo estoque 
SELECT l.nome AS loja, pr.nome AS produto, lp.estoque 
	FROM loja_produto lp
	INNER JOIN lojas l ON lp.id_loja = l.id_loja
	INNER JOIN produtos pr ON lp.id_produto = pr.id_produto
	WHERE lp.estoque <= 75;

#10 - 