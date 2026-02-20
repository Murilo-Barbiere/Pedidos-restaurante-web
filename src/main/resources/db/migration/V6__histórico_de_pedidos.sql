create table historico_pedidos_realizados_dia(
     id_historico serial,
     user_id int NOT null,
     cardapio_id int not NULL,
     data_hora_pedido_feito timestamp,
     data_hora_pedido_entregue timestamp default current_timestamp,
     primary key(id_historico),
     foreign key(user_id) REFERENCES usuario(user_id),
     foreign key(cardapio_id) REFERENCES cardapio(cardapio_id)
);

create or replace PROCEDURE pedido_realizado(id_pedido_feito int)
LANGUAGE plpgsql
AS $$
DECLARE
    v_user_id int;
        v_cardapio_id int;
        v_data_hora_pedido_feito TIMESTAMP;
begin
    delete from historico_pedidos_realizados_dia
    where data_hora_pedido_entregue < now() - interval '24 hours';

    select
        user_id,
        cardapio_id,
        data_hora_pedido
    into
        v_user_id,
        v_cardapio_id,
        v_data_hora_pedido_feito
    from pedidos
    where pedidos_id = id_pedido_feito;

    insert into historico_pedidos_realizados_dia(user_id, cardapio_id, data_hora_pedido_feito)
    values(v_user_id, v_cardapio_id, v_data_hora_pedido_feito);

    delete from pedidos where pedidos_id = id_pedido_feito;
end;
$$