//Desafio03
alert('Você está feliz');


//01
let nome = '';
let altura = 0;
let peso = 0;

function calculoDoIMC(altura, peso){
	nome = prompt('Qual é o seu nome: ');
	altura = parseFloat(prompt('Qual é a sua altura? '));
	peso = parseFloat(prompt('Qual é o seu peso? '));
	
	let IMC = parseInt(peso / (altura * altura));
	
	alert(`${IMC}kg/m2`);
}

calculoDoIMC();

//02
var fatorial = parseInt(prompt('Insira um numero para ser vatorado. '));
var resultado = 1;

function calcularFatorial (fatorial) {
    if (isNaN(fatorial)) {
        return 'Não existe fatorial de um texto';
    }     
    if (!Number.isInteger(fatorial) || fatorial < 0) {
        return 'Não existe fatorial de um número não natural';
    }     
    if (fatorial === 0 || fatorial === 1) {
        return 1;
    }     
    var resultado = fatorial;
    var primeiroMultipicador = fatorial - 1;
    for (var i = primeiroMultipicador; i > 1; i--) {
        resultado *= i;
    }     
    return resultado;
/*
#_Na linha 26, instanciamos nossa função calcularFatorial recebendo por parâmetro o número a ser calculado seu fatorial;
#_Na linha 27, fazemos verificação do dado, utilizando a função isNaN (is Not a Number) para verificar se o valor recebido na variável 
fatorial é um texto;
#_Na linha 31, fazemos verificação do dado, utilizando o sinal de negação (!) com o método Number.isInteger() para verificar se o valor 
recebido na variável fatorial é um número decimal (não inteiro) ou se é um número negativo;
#_Na linha 35, verificamos se o valor recebido na variável fatorial é um ou zero e retornamos o resultado correto;
#_Na linha 47, temos a apresentação do resultado da operação através do alert requisitando a função e passando como 
parâmetro.
*/
}
alert(calcularFatorial(fatorial));

//03

let valorEmReal = 4.80;
let dolar = 0;

function converterDeDolarParaReal(dolar){
    dolar = parseFloat(prompt('Insira o valor de que quer converter: '));
    let real = dolar * valorEmReal;
    alert(`Esse é o de dolar que covê queria converter US$${dolar} esse é o valor comvertido R$${real}`);
}

converterDeDolarParaReal();

//04
