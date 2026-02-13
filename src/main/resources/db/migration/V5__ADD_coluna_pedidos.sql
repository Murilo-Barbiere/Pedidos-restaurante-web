alter table pedidos
add column data_hora_pedido timestamp
default current_timestamp;