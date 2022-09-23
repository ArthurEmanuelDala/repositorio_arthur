function validar(){
    var nome = document.getElementById('nome').value;
    var email = document.getElementById('email').value;
    var telefone = document.getElementById('telefone').value;
    var cpf = document.getElementById('CPF').value;
    var senha = document.getElementById('senha').value;
    var confirmSenha = document.getElementById('confirmSenha').value;

    if(!nome){
        document.getElementById('erro').style.display='block';
        document.getElementById('erro').innerHTML = 'Campo Nome Inválido!' 
        return false;  
    }if(!email){
        document.getElementById('erro').style.display='block';
        document.getElementById('erro').innerHTML = 'Campo E-mail Inválido!';
        document.getElementById('email').focus;
        return false;
    }if(!telefone){
        document.getElementById('erro').style.display='block';
        document.getElementById('erro').innerHTML = 'Campo Telefone Inválido!';
        return false;
    }if(!cpf){
        document.getElementById('erro').style.display='block';
        document.getElementById('erro').innerHTML = 'Campo CPF Inválido!';
        return false;
    }if(!senha){
        document.getElementById('erro').style.display='block';
        document.getElementById('erro').innerHTML = 'Informe sua Senha!';
        return false;
    }if(!confirmSenha){
        document.getElementById('erro').style.display='block';
        document.getElementById('erro').innerHTML = 'Confirme sua Senha!';
        return false;
    }if(senha!=confirmSenha){
        document.getElementById('erro').style.display='block';
        document.getElementById('erro').innerHTML = 'Senhas não são iguais!';
        return false;
    }
}