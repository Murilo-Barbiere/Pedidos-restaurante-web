function fazer_pedido(id_pedido, id_user){
    fetch("/pedidos/fazer_pedido",{
        method: "POST",
        headers: {
            'Content-Type': 'application/json'
        },
        body:JSON.stringify(
            {
                "user_id" : id_user,
                "cardapio_id" : id_pedido
            }
        )
    })
        .then(async resposta => {
            if (!resposta.ok) {
                throw new Error('erro no servidor');
            }
        })
        .then(Dados =>{
            alert('Pedido realizado')
        })
        .catch(error => {
            alert('error');
        });
}