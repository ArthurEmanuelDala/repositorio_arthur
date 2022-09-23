//Classe document
document.write("Bom dia Chapecó");

//tile - retorna o titulo da página
//URl - retorna a url completa da pagina

document.write("<h2>"+document.title+"</h2>");
document.writeln(document.URL);

//Requisitando informações do HTML e alterando-as
function fAlterar(){
    var x = document.getElementById("paragrafo");
    x.innerHTML="Bom dia";
}

function inter(){
    var btnNome = Element=document.getElementById("btnInter");
    var lampada = Element=document.getElementById("imgLamp");
    if(Element.src.match("lampadaon")){
        Element.src="../img/lampadaoff.gif";
        btnNome.innerHTML="Ligar"
    }else{  
        Element.src="../img/lampadaon.gif";
        btnNome.innerHTML="Desligar"  
    }
}

function soma(){
    var n1 = parseInt(document.getElementById("v1").value);
    var n2 = parseInt(document.getElementById("v2").value);
    document.getElementById("res").innerHTML="Resposta:"+(n1+n2);
}

function subtracao(){
    var n1 = parseInt(document.getElementById("v1").value);
    var n2 = parseInt(document.getElementById("v2").value);
    document.getElementById("res").innerHTML="Resposta:"+(n1-n2);
}

function multiplicacao(){
    var n1 = parseInt(document.getElementById("v1").value);
    var n2 = parseInt(document.getElementById("v2").value);
    document.getElementById("res").innerHTML="Resposta:"+(n1*n2);
}

function divisao(){
    var n1 = parseInt(document.getElementById("v1").value);
    var n2 = parseInt(document.getElementById("v2").value);
    document.getElementById("res").innerHTML="Resposta:"+(n1/n2);
}

function porcento(){
    var n1 = parseInt(document.getElementById("v1").value);
    var n2 = parseInt(document.getElementById("v2").value);
    document.getElementById("res").innerHTML="Resposta:"+(n1-((n1*n2)/100));
}

function resDiv(){
    var n1 = parseInt(document.getElementById("v1").value);
    var n2 = parseInt(document.getElementById("v2").value);
    document.getElementById("res").innerHTML="Resposta:"+(n1 % n2);
}

function limpar(){
    var n1 = document.getElementById("v1");
    var n2 = document.getElementById("v2");
    var r = document.getElementById("res");
    n1.value="";
    n2.value="";
    r.innerHTML="Resposta"
}