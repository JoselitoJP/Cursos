//Desafio02
alert('Olá, mundo você está feliz! ');

//01
exibirNoConsole();

function exibirNoConsole(){
	console.log('Olá, mundo! ');	
}

//02
let nome = '';

function exibirNome(nome){
	nome = prompt('Qual é o seu nome! ');
	console.log(`Olá, ${nome}`);
}

exibirNome();

//03

let numero = 0;

function exibirNumero(numero){
	numero = parseInt(prompt('Qual numero você quer que dobre? '));
	let numeroDobrado = numero * 2 ;
	alert(`${numeroDobrado} esse é o dobro de ${numero}.`);
}

exibirNumero();

//04

let nota1 = 0;
let nota2 = 0;
let nota3 = 0;

let nome04 = prompt('Qual é o nome do aluno');

function media(){
	nota1 = parseInt(prompt(`Qual a 1° nota do aluno ${nome04}`));
	nota2 = parseInt(prompt(`Qual a 2° nota do aluno ${nome04}`));
	nota3 = parseInt(prompt(`Qual a 3° nota do aluno ${nome04}`));

	let mediaDaNota = parseInt((nota1 + nota2 + nota3) / 3) ;
	
	alert(`${mediaDaNota} essa é a media do aluno ${nome04}`);
}

media();


//05

let numero1 = 0;
let numero2 = 0;

function numeroMaior(numero1, numero2){
	numero1 = parseInt(prompt('Insira o primeiro numero: '));
	numero2 = parseInt(prompt('Insira o segundo numero: '));
	
	if(numero1 > numero2){
		alert('O primeiro numero é maior que o segundo');
	}else if(numero1 == numero2){
		alert('O primeiro numero é igual ao  segundo')
	}else{
		alert('O primeiro numero é menor que o segundo')
	}
}

numeroMaior();

//06

let numero01 = 0;
let numero02 = 0;

function multiplicaçao(numero01, numero02){
	alert('Manos multiplicar!')
	numero01 = parseInt(prompt('Insira o primeiro numero: '));
	numero02 = parseInt(prompt('Insira o segundo numero: '));
	
	let resultado = numero01 * numero02 ;
	
	alert(`O resultado da multiplicação é ${resultado}`);
}

multiplicaçao();