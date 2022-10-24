const cards = document.querySelectorAll('.card');
let hasFlippedCard = false;
let lockBoard = false;
let primeiraCarta, segundaCarta;

//Função que irá revelar a carta
function flipCard() {
    if(lockBoard) return;
    if(this === primeiraCarta) return;

    this.classList.add('flip');
    if (!hasFlippedCard) {
        hasFlippedCard = true;
        primeiraCarta = this;
        return;
    }
    segundaCarta = this;
    hasFlippedCard = false;
    checkForMath();
}

//Função que irá verificar a igualdade das cartas
function checkForMath() {
    if(primeiraCarta.dataset.card === segundaCarta.dataset.card){
        disableCards();
        return;
    }
    unflipCards();
}

//Função que desabilitará as cartas
function disableCards() {
    primeiraCarta.removeEventListener(click, flipCard);
    segundaCarta.removeEventListener(click, flipCard);
    resetBoard();
}

//Função que desvirá as cartas
function unflipCards(){
    lockBoard = true;
    setTimeout(()=>{
        primeiraCarta.classList.remove('flip');
        segundaCarta.classList.remove('flip');
        resetBoard();
    }, 1500);
}

//Função que reseterá o tabuleiro
function resetBoard(){
    [hasFlippedCard, lockBoard] = [false, false];
    [primeiraCarta, segundaCarta] = [null, null];
    /*hasFlippedCard = false;
    lockBoard = false;
    shuffle();*/
}

//Função que embaralhará as cartas
(function shuffle(){
    cards.forEach((card)=>{
        let randomPosition = Math.floor(Math.random()*12);
        card.style.order = randomPosition;
    })
})();

//Evento clique na carta
cards.forEach((card)=>{
    card.addEventListener('click', flipCard);
});