//Condião que consta fazer com que o personagem dê 5 passos, um de cada vez
//Declaração for([expressão inicial]; [condião]; [incremento]);
var passo;
/*for( passo = 0; passo < 5; passo ++){
    console.log('Ande um passo');
}*/

function howMany(selectObject){
    var nroSelecoes = 0;
    for(var i = 0; i < selectObject.options.length; i++){
        if(selectObject.options[i].selected){
            nroSelecoes++;
        }
    }
    return nroSelecoes;
}

var btn = document.getElementById('btn');
btn.addEventListener("click", function(){
    alert('Total Selecionados: ' + howMany(document.selectForm.tipoMusica));
});

//do/while

/*do
    State
while(condicao);*/

var resultado = '';
var i = 0;

do{
    i+=1;
    resultado += i+'  ';
}while(i<10);
document.getElementById('exemplo').innerHTML = resultado;

//Elementos de repetição com funcionalidades semelhantes e suas diferenças
//=> While - Executa o loop enquanto a condição for verdadeira
//Contar de 1 até 10
contagem = 0;
var i = 0;
while(contar <= 10){
    i++;
}

// Do While - Executa o loop primiero e depois verifica a condição
do{
    contagem ++; 
}while(contagem <= 10);

//For: Executa o loop enquanto a condição for verdadeira, porem, a instancia das variaveis de contagens são instanciadas na estrutura do loop!
contagem = 0;
var i = 0;
for(i = 0; i <= 10; i++){
    contagem++;
}

//Foreach: Executa o loop sobre elementos de um array
contagem = [0,1,2,3,4,5,6,7,8,9];
i = 0;
contagem.forEach(contagem => {
    i++;
}); 

//Break: Encerra o loopo atual 
// sintaxe break [label]; - break;
//ex: A função encerra o loop quando a variavel i for 3 e então retorna 3 * x
function testeBreak(x){
    var i = 0;
    while (i < 6){
        if(i==3){
            break;
        }
        i+= 1;
    }
    return i * x;    
}

//A condicional Switch avalia a expressão, combinando o valor da expressão com uma "clausula case" e executa o comando associado ao case
switch (expr){
    case "Laranjas":
        console.log("Laranjas R$4,99 Kg");
        break;

    case "Banana":
        console.log("Laranjas R$4,50 Kg");
        break;

    case "Pera":
        console.log("Laranjas R$9,99 Kg");
        break;

    case "Maracuja":
        console.log("Laranjas R$7,99 Kg");
        break;

    case "Limão":
        console.log("Laranjas R$8,99 Kg");
        break;

    case "Kiwi":
        console.log("Laranjas R$15,50 Kg");
        break;

    case "Maça":
        console.log("Laranjas R$10,50 Kg");
        break;

    case "Melão":
        console.log("Laranjas R$3,99 Kg");
        break;


    default:
        console.log("Desculpe, Não temos disponivel em estoque no momento" + expr + " . ")    
}
console.log ("Gostaria de mais alguma coisa")