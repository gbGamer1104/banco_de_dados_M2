show variables like 'have_ssl';
show variables like 'have_openssl';

alter user 'admin'@'%' require ssl;

alter user 'entregador'@'%' require ssl;

alter user 'operador_loja'@'%' require ssl;