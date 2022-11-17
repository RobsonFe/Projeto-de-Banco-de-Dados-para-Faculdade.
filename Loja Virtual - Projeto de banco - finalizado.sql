/* O meu Primeiro banco de dados relacional;
Feito por Robson Ferreira da Silva, Estudante de Sistemas;
Curso de Analise e Desenvolvimento de Sistemas;
Primeiro Periodo; 

Projeto de uma Loja Virtual;
 */

CREATE DATABASE loja_virtual;
USE loja_virtual;

CREATE TABLE loja (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
cnpj VARCHAR(14)
);

INSERT INTO loja (cnpj) VALUES ('12587430258920');

CREATE TABLE funcionarios (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (100),
funcao VARCHAR (100),
salario FLOAT (10),
endereco VARCHAR (255)
);

SELECT * FROM funcionarios;

INSERT INTO funcionarios (nome, funcao, salario, endereco) VALUES ("Roberto Santos", "Gerente","5000", "Rua das alamedas n25");
INSERT INTO funcionarios (nome, funcao, salario, endereco) VALUES ("Luiza Souza", "Programadora","3000","Rua São Jorge n35");
INSERT INTO funcionarios (nome, funcao, salario, endereco) VALUES ("João da Silva", "Marketing Digital","3000", "Rua Francisco Silva n10");


UPDATE funcionarios SET salario = 2500 WHERE id = 3;

SELECT * FROM funcionarios WHERE salario >=5000;

SELECT * FROM funcionarios;

CREATE TABLE cliente (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR (100),
telefone VARCHAR (12),
endereco_cliente VARCHAR (255)
);
SELECT * FROM cliente;

INSERT INTO cliente (nome, telefone, endereco_cliente) VALUES ("Rodrigo Ferreira", "8195762524", "Rua Barbosa de lima n66");

CREATE TABLE produtos (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
qtd_produtos INT,
tipo_produto VARCHAR (100),
sku CHAR(5),
estoque_produto INT,
descricao MEDIUMTEXT
);
SELECT * FROM produtos;
INSERT INTO produtos ( id, qtd_produtos, tipo_produto, sku, estoque_produto, descricao) VALUES ( id, "1" , "placa mãe", "placa", 30,"Placa Mãe de ultima geração"); 
INSERT INTO produtos ( id, qtd_produtos, tipo_produto, sku, estoque_produto, descricao) VALUES (id, "1" , "placa de video" , "placa" , 30 , "Placa de video usada"); 
INSERT INTO produtos ( id, qtd_produtos, tipo_produto, sku, estoque_produto, descricao) VALUES (id, "1" , "processador" , "proc" , 30 , "Processador i7 ultima geração"); 
INSERT INTO produtos ( id, qtd_produtos, tipo_produto, sku, estoque_produto, descricao) VALUES (id, "1" , "memoria ram" , "memor" , 30 , "memoria RAM de 8GB"); 
INSERT INTO produtos ( id, qtd_produtos, tipo_produto, sku, estoque_produto, descricao) VALUES (id, "1" , "HD" , "HD" , 30 , "HD 1 de tera"); 

DELETE FROM produtos WHERE id = 5;

CREATE TABLE pedido (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
quantidade INT(10),
preco FLOAT,
data_da_compra DATE,
loja_id INT NOT NULL,
cliente_id INT NOT NULL,
produtos_id INT NOT NULL,
FOREIGN KEY (loja_id) REFERENCES loja(id),
FOREIGN KEY (cliente_id) REFERENCES cliente(id),
FOREIGN KEY (produtos_id) REFERENCES produtos(id)
);

SELECT * FROM pedido;

INSERT INTO pedido (id, quantidade, preco, data_da_compra, loja_id, cliente_id, produtos_id) VALUES (id, '1', '300', "2022-06-06", 1, 1, 1); 

/* O meu primeiro projeto de banco de dados feito para a faculdade. Esse projeto será postado em meu GitHub RobsonFe */