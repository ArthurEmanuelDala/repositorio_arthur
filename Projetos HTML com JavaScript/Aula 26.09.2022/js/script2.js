/*var listItens = document.getElementsByTagName("li");

document.write("<p>Há" + listItens.length + "elementos 'li'</p>");
document.write("<p> Texto dentro dos elementos li: </p>");
    for(var i = 0; i<listItens.length; i++){
        document.write("<p>" + listItens[i].innerHTML + "</p>");
    }

var idlista2 = "lista2";

document.write("<p>Exercicio</p>");

for(var i = 0; i < listItens.length; i++){
    if(listItens[i].parentElement.id == idlista2){
        document.write(`<p>${listItens[i].innerHTML}</p>`);
    }else{

        continue;

    }    
}*/

var funcionarios 

{
    "Arthur":{"Idade": 16, "Cidade": "Chapecó"},
    "Bruno":{"Idade": 51, "Cidade": "Joaçaba"},
    "Carlos":{"Idade": 41, "Cidade": "Xaxim"},
    "Joao":{"Idade": 20, "Cidade": "Cordileira Alta"},
    "Pedro":{"Idade": 36, "Cidade": "Xanxerê"},
    "Eduardo":{"Idade": 28, "Cidade": "Guatambu"}
}

var funcionarios = JSON.parse(funcionarios);
alert(funcionarios.Joao);
alert(funcionarios.Joao.Idade);
alert(funcionarios.Joao.Cidade);