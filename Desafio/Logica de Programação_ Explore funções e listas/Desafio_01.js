
//Desafio_01
alert('Ola, Mundo você esta feliz!');

//01 O primeiro desafio erra baixar o projeto para ser usado no desafio

//02
function tituloNaTela(tag, texto){
	let titulo = document.querySelector(tag);
	titulo.innerHTML = texto;
}

tituloNaTela('h1', 'Hora do Desafio');

//03
function botaoConsole(){
	console.log('O botão foi clicado');
}

//04
function botaoAlert(){
	alert('Eu amo JS');
}

//05
function botaoPrompt(){
	let cidade = prompt('Qual cidade você é');
	alert(`Estive em ${cidade} e lembrei de você.`)	
}

//06
function botaoSoma(){
	let n1 = parseInt(prompt('Ensira o primeiro numero? '));
	let n2 = parseInt(prompt('Ensira o segundo numero? '));
	let soma = n1 + n1;
	
	alert(`A soma do primeiro numero e do segundo é ${soma}`);
	
}
