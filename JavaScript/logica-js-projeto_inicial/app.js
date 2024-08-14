
//alert('Olá, Mundo vocês estão felizes!');

alert('Boas vindas ao jogo do número secreto')

let numeroMaximo = 5000;
let numeroSecreto = parseInt(Math.random() * 10 + 1);
console.log(numeroSecreto);
//prompt('Escolha um número entre 1 e 100');
let chute; //= prompt('Escolha um número entre 1 e 100');
let tentativas = 1;

//Enquanto o chute não for igual ao n.s.
while(chute != numeroSecreto){
	//(!=) Sinal de diferente
	chute = prompt('Escolha um número entre 1 e 100');
	// se o chute for igual ao numero secreto
	if(chute == numeroSecreto){
		break; //para
		
		//console.log('Isso ai! Você descobriu o numero secreto(5)');
	}else{
		//alert('Você errou! :(')
		if(chute > numeroSecreto){
			alert(`O numero secreto é menor que ${chute}`);
		}else{
			alert(`O numero secreto é maior que ${chute}`);
		}
		tentativas++//tentativas = tentativas + 1;
		
	}
}
//operador Termario
let palavraTentativa = tentativas > 1 ? 'tentativas':'tentativa';

alert(`Isso ai! Você descobriu o numero secreto ${numeroSecreto} com ${tentativas} ${palavraTentativa}.`);


/*
if(tentativas > 1){
	alert(`Isso ai! Você descobriu o numero secreto ${numeroSecreto} com ${tentativas} tentativas.`);
	//Template Strings(é umas das formas de usar valor de de variaves com testo)
}else{
	alert(`Isso ai! Você descobriu o numero secreto ${numeroSecreto} com ${tentativas} tentativa.`);
}
*/

/*
AND (&&)
O operador AND, representado pelos símbolos "&&", é utilizado para combinar duas condições e avaliar se ambas são 
verdadeiras. Se ambas as condições forem verdadeiras, o resultado será… verdadeiro. Caso contrário, logicamente será falso. 
Por exemplo:

let idade = 25;
let possuiCarteira = true;

// se idade é maior que 18 e possui carteira…
if (idade > 18 && possuiCarteira) {
  console.log("Pode dirigir!");
} else {
  console.log("Não pode dirigir.");
}

OR (||)
O operador OR, representado pelos símbolos "||", é usado para verificar se pelo menos uma das condições é verdadeira. Se uma das 
condições for verdadeira, o resultado será verdadeiro. Se ambas forem falsas, o resultado será falso. Veja um exemplo:

let temMaça = false;
let temBanana = true;

// se tem maça ou tem banama…
if (temMaça || temBanana) {
  console.log("Você tem frutas!");
} else {
  console.log("Não tem frutas.");
}

=============================================================================================================================================

Math.random()

A função Math.random() é usado para retornar um número pseudoaleatório de ponto flutuante entre 0 e 1. 
Um número de ponto flutuante é o modo como o computador representa números reais. 
Para melhor entendimento, alguns possíveis retornos desse método são: 0.8244415641011535, 0.08506031872225872, entre outros valores.

Math.floor()

A função Math.floor() é usada para arredondar o número passado como parâmetro para seu inteiro mais próximo, levando como base o valor menor. 
Vamos fazer um teste, levando em consideração o caso anterior, onde gostaríamos de receber um valor de 0 a 20.


parseInt()

Outra alternativa para transformar o número de ponto flutuante retornado da função Math.random() em um número inteiro é o uso do 
parseInt(). O método parseInt analisa um valor passado como parâmetro como uma string e retorna o primeiro número inteiro. 
Vamos utilizá-lo para receber um valor de 0 a 20?
*/



