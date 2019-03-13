

CREATE DATABASE venda;
USE venda;

Create table cliente(
codigo_cliente int not null,
nome_cliente varchar(20),
endereco varchar(30),
cidade varchar(15),
estado char(2),
cep char(10),
cnpj char(20),
ie char(20),
primary key (codigo_cliente)
);

INSERT INTO cliente
VALUES (1, 'FABRI', 'RUA DOM PEDRO', 'GARÇA', 'SP', '17400000', '124578', '1244554'),
       (2, 'LUCAS', 'RUA 123', 'GARÇA', 'SP', '17400000', '22345578', '11112334'),
       (3, 'EDU', 'RUA 234', 'GARÇA', 'SP', '17400000', '121111', '124222222');


Create table vendedor(
codigo_vendedor int not null,
nome_vendedor varchar(20),
salario_fixo float(20),
faixa_comissao char(1),
primary key (codigo_vendedor )
);

INSERT INTO cliente
VALUES (12, 'MAURICIO', 1.200, '20'),
       (04, 'ALE', 1.400, '15'),
       (08, 'MONICA', 1.600, '8');

Create table produto(
codigo_produto int not null,
unidade char(3),
descricao_produto char(30),
val_unit float,
primary key(codigo_produto )
);

INSERT INTO produto
VALUES (665, '20', 1, 'PEN-DRIVE', 20),
       (200, '10', 2, 'PLACA-VIDEO', 220),
       (165, '30', 5, 'MOUSE', 35);

Create table pedido(
num_pedido int not null,
prazo_entrega int not null,
codigo_cliente int not null,
codigo_vendedor int not null,
primary key(num_pedido),
Foreign key (codigo_cliente) References cliente(codigo_cliente),
Foreign key (codigo_vendedor) References vendedor(codigo_vendedor)
);

INSERT INTO pedido (num_pedido, prazo_entrega)
VALUES (222342, 20),
       (11456, 10),
       (8876, 17);

Create table item_pedido(
num_pedido int not null,
codigo_produto int not null,
quantidade float,
Foreign key (num_pedido) References pedido(num_pedido),
Foreign key (codigo_produto) References produto(codigo_produto)
);

INSERT INTO item_pedido
VALUES (2210, 100, 1),
       (1123, 10, 2),
       (887, 8, 1);



