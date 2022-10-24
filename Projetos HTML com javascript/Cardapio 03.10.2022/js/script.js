function comprar(){
    let cd = Number(document.getElementById('codigo').value)
    let qtd = Number(document.getElementById('quantidade').value)

    switch(cd){
        case 100:
            res1.innerHTML += `<p>Cachorro Quente! Valor a pagar: R$${(1.70 * qtd).toFixed(2)}</p>` 
            break
        case 101:
            res1.innerHTML += `<p>Bauru Simples! Valor a pagar: R$${(2.30 * qtd).toFixed(2)}</p>`  
            break
        case 102:
            res1.innerHTML += `<p>Bauru com ovo! Valor a pagar: R$${(2.60 * qtd).toFixed(2)}</p>`  
            break
        case 103:
            res1.innerHTML += `<p>Hamburguer! Valor a pagar: R$${(2.40 * qtd).toFixed(2)}</p>`  
            break
        case 104:
            res1.innerHTML += `<p>Cheeseburguer! Valor a pagar: R$${(2.50 * qtd).toFixed(2)}</p>`
            break
        case 105:
            res1.innerHTML += `<p>Refrigerante! Valor a pagar: R$${(1.0 * qtd).toFixed(2)}</p>`  
            break
        default:
            res1.innerHTML += '<p>Código Inválido</p>'
            break
    }

}