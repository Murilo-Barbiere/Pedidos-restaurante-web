function registrar(event){
    event.preventDefault();
    document.getElementById('errorMessage').innerHTML = '';

    const nome = document.getElementById('nome').value;
    const email = document.getElementById('email').value;
    const senha = document.getElementById('senha').value;
    const senha_confirmacao = document.getElementById('senha_confirmacao').value;

    if(senha !== senha_confirmacao){
        document.getElementById('errorMessage').innerHTML = 'Digite senhas iguais';
        return;
    }

    fetch('/user/registrar', {
        method: "POST",
        headers: {
            'Content-Type': 'application/json'
        },
        body:JSON.stringify(
            {
                nome: nome,
                email: email,
                senha: senha,
                role: "ROLE_USER"
            }
        )
    })
        .then(async resposta => {
            if (!resposta.ok) {
                throw new Error('dados invalidos');
            }
        })
        .then(userDados =>{
            alert('Usuário registrado com sucesso!');
            window.location.href = 'login.html';
        })
        .catch(error => {
            document.getElementById('errorMessage').innerHTML = error.message;
        });
}