//Desafio02
alert ('Bom dia, você esta fiz!')


01
let dia = prompt('Qual dia é hoje? ');

if(dia == 'Domingo', 'Sabado'){
	alert('Bom fim de semana!');
}else{
	alert('Boa semana!');
}


//02
let numero = prompt('Digite um numero? ');

if(numero < 0 ){
	alert(`Esse numero ${numero} é negativo `);
}else{
	alert(`Esse numero ${numero} é positivo `);
}

//03
let pontuacao = prompt('Qual é a sua pontuação? ')

if(pontuacao >= 100){
	alert(`Parabéns, você venceu! Sua pontuação foi de ${pontuacao}`);
}else{
	alert('Tente novamente para ganhar!');
}


//04

let saldo = 2000;
let nome = prompt('Qual é o seu nome? ');
let conta = prompt('Qual é sua conta? ');
	
if(conta == 12584){
	alert(`Parser senhor ${nome} sua conta é ${conta} e esse é o seu saldo ${saldo}R$`);
}else{
	alert('Você digitol a conta errada');
}


//05

alert(`Bem vindo senhor ${nome}`);