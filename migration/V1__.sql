CREATE TABLE cardapio
(
    cardapio_id BIGINT AUTO_INCREMENT NOT NULL,
    nome        VARCHAR(255) NOT NULL,
    valor DOUBLE NOT NULL,
    descricao   VARCHAR(255) NULL,
    CONSTRAINT pk_cardapio PRIMARY KEY (cardapio_id)
);

CREATE TABLE pedidos
(
    pedidos_id  BIGINT AUTO_INCREMENT NOT NULL,
    user_id     BIGINT NOT NULL,
    cardapio_id BIGINT NOT NULL,
    CONSTRAINT pk_pedidos PRIMARY KEY (pedidos_id)
);

CREATE TABLE usuario
(
    user_id BIGINT AUTO_INCREMENT NOT NULL,
    nome    VARCHAR(255) NOT NULL,
    senha   VARCHAR(255) NOT NULL,
    email   VARCHAR(255) NOT NULL,
    CONSTRAINT pk_usuario PRIMARY KEY (user_id)
);