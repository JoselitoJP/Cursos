
alert('Olá, Mundo vocês estão felizes!');

//01
console.log('Olá, Mundo vocês estão felizes! ');

//02
let nome2 = 'João';
console.log(`Olá, ${nome2}!`);

//03
let nome3 = 'Jaison';
alert(`Olá, ${nome3}! `);

//04
let linguagem = prompt('Qual a linguem de progamação que você mais gosta? ');
console.log(linguagem);

//05 e 06
let valor1 = 10;
let valor2 = 15;

let resultado = valor1 + valor2;
let resultado2 = valor1 - valor2;

console.log(`A soma de ${valor1} e ${valor2} é igual a ${resultado}`);
console.log(`A subtração de ${valor1} e ${valor2} é igual a ${resultado2}`);

//07

let nome7 = prompt('Olá, qual é o seu Nome? ');
let idade = prompt('Qual é a sua idade? ');
 
if(idade >= 18){
	console.log(`O ${nome7} é maior de idade`);
}else{
	console.log(`O ${nome7} é meor de idade`);
}

//08

let numero8 = prompt('Por favor, insira um numero ');

if(numero8 <=(-1)){
	alert('Esse numero que você digitol é negativo ');
}else if(numero8 == 0){
	alert('Você digitol o numero 0');
}else{
	alert('Esse numero que você digitol é positivo ');
}

//09
let numero9 = 1;

while(numero9 < 11){
	console.log(numero9);
	numero9++;
}

//10
let nome10 = prompt('Qual é o nome do aluno? ');
let nota = prompt('Atribua o valor de nota do aluno ');

if(nota >=7 ){
	console.log(`O aluno ${nome10} esta aprvado!`);
}else{
	console.log(`O aluno ${nome10} esta reprovado!`);
}

//11
let numero11 = Math.random();
console.log('Numero aleatorio: ' + numero11);

//12
let numero12 = parseInt(Math.random() * 10 + 1);
console.log('Numero aleatorio de 1 a 10: ' + numero12);

//13
let numero13 = parseInt(Math.random() * 1000 + 1);
console.log('Numero aleatorio de 1 a 100: ' + numero13);
