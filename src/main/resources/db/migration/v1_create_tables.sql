CREATE TABLE usuario(
    user_id serial,
    nome varchar(32) not null,
    senha varchar(32) not null,
    email VARCHAR(256) not null,
    primary key(user_id)
);

CREATE TABLE cardapio(
     cardapio_id serial,
     nome varchar(32) not null,
     valor decimal(10,2) not null,
     descricao text,
     primary key(cardapio_id)
);

CREATE TABLE pedidos(
    pedidos_id serial,
    user_id int NOT null,
    cardapio_id int not NULL,
    primary key(pedidos_id),
    foreign key(user_id) REFERENCES usuario(user_id),
    foreign key(cardapio_id) REFERENCES cardapio(cardapio_id)
);