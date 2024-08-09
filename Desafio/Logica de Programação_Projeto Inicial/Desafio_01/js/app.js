//Aula 01.Projeto AluGames
alert('Vocês estão felizes! ');

//Recuperação de informações 
function alterarStatus(id){//Função de alterar status 
	let gameClicado = document.getElementById(`game-${id}`);//Recuperando o id
	let imagem = gameClicado.querySelector('.dashboard__item__img');//Recuperando a imagem
	let botao = gameClicado.querySelector('.dashboard__item__button');//Recuperando o botão
	
	if (imagem.classList.contains('dashboard__item__img--rented')) {
	    imagem.classList.remove('dashboard__item__img--rented');
	    botao.classList.remove('dashboard__item__button--return');
	    botao.textContent = 'Alugar';
	} else {
	    imagem.classList.add('dashboard__item__img--rented');
	    botao.classList.add('dashboard__item__button--return');
	    botao.textContent = 'Devolver';
	}
}

function quemAlugol (id){
	let gameClicado = document.getElementById(`game-${id}`);//Recuperando o id
	let botao = gameClicado.querySelector('.dashboard__item__button');//Recuperando o botão
	let nomeJogo = gameClicado.querySelector('.dashboard__item__name');//Recuparando o botão 
	let nomePessoa = 'jp';
	let totalJogosAlugados = 1;

	if (nomePessoa === null) {
    return;
	}

	// Incrementa o total de jogos alugados apenas se a ação for "Alugar"
	if (botao.textContent === "Alugar") {
	    totalJogosAlugados = totalJogosAlugados + 1;
	}

	if (botao.textContent === "Alugar") {
	    // Verifica se a pessoa que está devolvendo é a mesma que alugou
	    let nomeAluguel = prompt("Qual é o nome da pessoa que alugou o jogo?");

	    if (nomeAluguel === null || nomeAluguel.toLowerCase() !== nomePessoa.toLowerCase()) {
	        alert("Entre com o nome correto da pessoa que alugou o jogo, para que ele possa ser devolvido.");
	        return;
	    }
	    botao.textContent = "Alugar";
	    alert(`Tudo bem ${nomePessoa}, obrigado por devolver o jogo ${nomeJogo.textContent}`);

	} else if (botao.textContent === "Devolver") {
	    botao.textContent = "Devolver";
	    alert(`Tudo bem ${nomePessoa}, já pode pegar o jogo ${nomeJogo.textContent}, no total da loja, ${totalJogosAlugados} já foram alugados.`);
	    
	}

}

function palindromo(){
	let gameClicado = document.getElementById(`game-${id}`);//Recuperando o id
	let palavra = document.querySelector('input').textContent;

	console.log(palavra);
}

/*
	Nessa aula, você aprendeu como:
		
		*Analisar o código de uma página HTML para entender sua estrutura e planejar o código de sua funcionalidade;

		*Recuperar elementos da página com JavaScript, com o uso das funções document.querySelector() e document.getElementById();

		*Declarar variáveis no JavaScript para armazenar elementos recuperados da página;

		*Acessar a lista de classes que um elemento da página possui, via propriedade classList;

		*Declarar um bloco condicional if/else, para implementar a funcionalidade de alterar o status de um jogo.
*/


// Desafio: hora da prtica
/*

1.	No projeto Alugames, implemente uma confirmação de devolução.(feito)
2.	No projeto Alugames, crie uma função para imprimir no console a informação sobre quantos jogos foram alugados.
3.	Crie um programa que verifica se uma palavra ou frase é um palíndromo.
4.	Crie um programa com uma função que receba três números como argumentos e os retorne em ordem crescente. Exiba os números ordenados.



*/