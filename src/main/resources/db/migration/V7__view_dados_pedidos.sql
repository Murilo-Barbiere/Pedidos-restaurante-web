create view dados_pedidos as
select
    p.pedidos_id as id,
    u.nome as nome_user,
    c.nome as item_cardapio,
    c.valor,
    p.data_hora_pedido
from pedidos p
         join usuario u on u.user_id = p.user_id
         join cardapio c on c.cardapio_id = p.cardapio_id
order by p.pedidos_id;