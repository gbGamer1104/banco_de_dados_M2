INSERT INTO clientes (nome, cpf, email, telefone, data_cadastro) VALUES
	('João Silva', '11111111101', 'joao@email.com', '49999990001', '2026-01-01'),
	('Maria Souza', '11111111102', 'maria@email.com', '49999990002', '2026-01-05'),
	('Carlos Lima', '11111111103', 'carlos@email.com', '49999990003', '2026-01-10'),
	('Ana Costa', '11111111104', 'ana@email.com', '49999990004', '2026-01-15'),
	('Pedro Alves', '11111111105', 'pedro@email.com', '49999990005', '2026-01-20'),
	('Lucas Rocha', '11111111106', 'lucas@email.com', '49999990006', '2026-02-01'),
	('Fernanda Lima', '11111111107', 'fernanda@email.com', '49999990007', '2026-02-05'),
	('Bruno Santos', '11111111108', 'bruno@email.com', '49999990008', '2026-02-10'),
	('Juliana Souza', '11111111109', 'juliana@email.com', '49999990009', '2026-02-15'),
	('Rafael Gomes', '11111111110', 'rafael@email.com', '49999990010', '2026-02-20');

INSERT INTO regioes_entrega (nome, cidade) VALUES
	('Centro', 'Canoinhas'),
	('Zona Norte', 'Canoinhas'),
	('Zona Sul', 'Canoinhas'),
	('Zona Leste', 'Canoinhas'),
	('Zona Oeste', 'Canoinhas'),
	('Industrial', 'Três Barras'),
	('Interior', 'Três Barras'),
	('Centro', 'Mafra'),
	('Bairro Alto', 'Mafra'),
	('Centro', 'Itaiópolis');

INSERT INTO lojas (nome, endereco) VALUES
	('Mig Canoinhas Zona Sul', 'Rua A, 123'),
	('Mig Mafra', 'Rua B, 456'),
	('Mig Três Barras', 'Rua C, 789'),
	('Mig Canoinhas Centro', 'Rua D, 321'),
	('Mig Itaiópolis', 'Rua E, 654');

INSERT INTO produtos (nome, descricao) VALUES
	('Arroz 5kg', 'Arroz branco tipo 1'),
	('Feijão 1kg', 'Feijão carioca'),
	('Macarrão 500g', 'Espaguete'),
	('Leite 1L', 'Integral'),
	('Óleo 900ml', 'Óleo de soja'),
	('Açúcar 1kg', 'Açúcar refinado'),
	('Café 500g', 'Café torrado'),
	('Farinha 1kg', 'Farinha de trigo'),
	('Sal 1kg', 'Sal refinado'),
	('Refrigerante 2L', 'Cola');

INSERT INTO loja_produto (id_loja, id_produto, preco, estoque) VALUES
	(1, 1, 25.00, 100),
	(1, 2, 8.50, 80),
	(2, 3, 5.00, 120),
	(2, 4, 4.50, 90),
	(3, 5, 7.00, 70),
	(3, 6, 6.00, 60),
	(4, 7, 15.00, 50),
	(4, 8, 4.00, 40),
	(5, 9, 3.00, 100),
	(5, 10, 8.00, 90);

INSERT INTO entregadores (nome, cpf, telefone) VALUES
	('Lucas Pereira', '22222222201', '49988880001'),
	('Rafael Gomes', '22222222202', '49988880002'),
	('Bruno Rocha', '22222222203', '49988880003'),
	('Felipe Martins', '22222222204', '49988880004'),
	('André Souza', '22222222205', '49988880005'),
	('Diego Alves', '22222222206', '49988880006'),
	('Paulo Lima', '22222222207', '49988880007'),
	('Ricardo Costa', '22222222208', '49988880008'),
	('Eduardo Santos', '22222222209', '49988880009'),
	('Marcos Silva', '22222222210', '49988880010');

INSERT INTO pedidos (id_cliente, id_entregador, data_pedido, status_pedido, valor_frete, valor_total) VALUES
	(1, 1, '2026-04-01 10:00:00', 'ENTREGUE', 5.00, 55.00),
	(2, 2, '2026-04-02 11:00:00', 'EM_ENTREGA', 5.00, 30.50),
	(3, 3, '2026-04-03 12:00:00', 'PENDENTE', 5.00, 20.00),
	(4, 4, '2026-04-04 13:00:00', 'EM_PREPARO', 5.00, 25.00),
	(5, 5, '2026-04-05 14:00:00', 'ENTREGUE', 5.00, 40.00),
	(6, 6, '2026-04-06 15:00:00', 'ENTREGUE', 5.00, 60.00),
	(7, 7, '2026-04-07 16:00:00', 'EM_ENTREGA', 5.00, 35.00),
	(8, 8, '2026-04-08 17:00:00', 'PENDENTE', 5.00, 18.00),
	(9, 9, '2026-04-09 18:00:00', 'EM_PREPARO', 5.00, 22.00),
	(10, 10, '2026-04-10 19:00:00', 'ENTREGUE', 5.00, 45.00);

INSERT INTO loja_regiao (id_loja, id_regiao, taxa_frete) VALUES
	(1, 1, 5.00),
	(1, 2, 6.00),
	(2, 3, 5.00),
	(2, 4, 7.00),
	(3, 5, 6.00),
	(3, 6, 8.00),
	(4, 7, 5.00),
	(4, 8, 6.00),
	(5, 9, 7.00),
	(5, 10, 8.00);

INSERT INTO pagamentos (id_pedido, tipo_pagamento, status_pagamento, data_pagamento) VALUES
	(1, 'PIX', 'APROVADO', '2026-04-01 10:05:00'),
	(2, 'CRÉDITO', 'APROVADO', '2026-04-02 11:05:00'),
	(3, 'PIX', 'PENDENTE', NULL),
	(4, 'DÉBITO', 'APROVADO', '2026-04-04 13:05:00'),
	(5, 'PIX', 'APROVADO', '2026-04-05 14:05:00'),
	(6, 'CRÉDITO', 'APROVADO', '2026-04-06 15:05:00'),
	(7, 'PIX', 'APROVADO', '2026-04-07 16:05:00'),
	(8, 'DÉBITO', 'PENDENTE', NULL),
	(9, 'PIX', 'APROVADO', '2026-04-09 18:05:00'),
	(10, 'CRÉDITO', 'APROVADO', '2026-04-10 19:05:00');


INSERT INTO itens_pedido (id_pedido, id_loja_produto, quantidade, preco_unitario) VALUES
	(1, 1, 2, 25.00),
	(2, 2, 3, 8.50),
	(3, 3, 4, 5.00),
	(4, 4, 2, 4.50),
	(5, 5, 5, 7.00),
	(6, 6, 3, 6.00),
	(7, 7, 2, 15.00),
	(8, 8, 2, 4.00),
	(9, 9, 3, 3.00),
	(10, 10, 4, 8.00);

