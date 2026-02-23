async function tabela_pedidos(){
   try {
       const itens = await fetch("pedidos/mostrar_pedidos")
           .then(resposta => resposta.json());
       const tabela = document.getElementById("listar_itens")

       itens.forEach(item => {
           tabela.innerHTML += `
                <tr>
                    <td>${item.nome}</td>
                    <td>${item.valor.toFixed(2)}</td>
                    <td>${item.descricao}</td>
                    <td>
                        <button 
                            onclick="pedido_feito(${item.id}, localStorage.getItem('user_id'))">
                            pedido_feito
                        </button>
                    </td>
                </tr>
            `;
       })
   }catch (erro){
       throw new erro('erro no servidor');
   }
}