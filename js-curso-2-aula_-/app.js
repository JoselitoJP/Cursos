
//alert('Olá, Mundo vocês estão felizes!');
let numeroSecreto = gerarNumeroAleatorio();
let tentativas = 1;

function exibirTextoNaTela(tag, texto){
	let campo = document.querySelector(tag);
	campo.innerHTML = texto;
}

exibirTextoNaTela('h1', 'Jogo do Numero Secreto');
exibirTextoNaTela('p', 'Escolha um numero entre 1 e 10');


function verificarChute(){
	let chute = document.querySelector('input').value;
	
	if(chute == numeroSecreto){//Se o chute estiver certo
		exibirTextoNaTela('h1', 'Acertou! ');
		let palavraTentativa = tentativas > 1 ? 'tentativas' : 'tentativa';
		let mensagemTentativas = `Você descobriu o numero secreto! Com ${tentativas} ${palavraTentativa}.`;//Mensagem de sucesso!
		exibirTextoNaTela('p', mensagemTentativas);//Exibindo texto na tela 
		
		//Ativando o botão reiniciar
		document.getElementById('reiniciar').removeAttribute('disabled');
		
	}else{//Se o chute estiver errado
		if(chute > numeroSecreto){//Se o numero for menor
			exibirTextoNaTela('h1', 'Errou! ');//Exibindo texto na tela 
			exibirTextoNaTela('p', `O numero secreto é menor que! ${chute}. :(`);//Exibindo texto na tela 
		}else{//Se o numro for maior
			exibirTextoNaTela('h1', 'Errou! ');//Exibindo texto na tela 
			exibirTextoNaTela('p', `O numero secreto é maior que! ${chute}. :( `);//Exibindo texto na tela 
		}
		//tentativas = tentativas + 1;
		tentativas++;
		limparCampo();//Chamando função de limparCampo
	}
}

function gerarNumeroAleatorio(){
	return parseInt(Math.random() * 10 + 1);
}

function limparCampo(){//função para limpar o campo onde se escreve o chute
	chute = document.querySelector('input');
	chute.value = '';
}

/*
 Boas Praticas de programação 
Evite copiar o mesmo codigo varias vezes utilizando funcões

 (function)
Uma função JavaScript é um bloco de código projetado para executar uma tarefa específica.
Uma função JavaScript é executada quando “algo” a invoca (chama)

(document)
O objeto document representa sua página da web.
Se você deseja acessar qualquer elemento em uma página HTML, você sempre começa acessando o objeto do documento.
Abaixo estão alguns exemplos de como você pode usar o objeto document para acessar e manipular HTML.

(querySelector e querySelectorAll)
O querySelector()método retorna o primeiro elemento que corresponde a um seletor CSS.
Para retornar todas as correspondências (não apenas a primeira), use o querySelectorAll()em vez disso.
Ambos querySelector()e querySelectorAll()lançam uma exceção SYNTAX_ERR se o(s) seletor(es) for(em) inválido(s).

(innetHTML)
A innerHTMLpropriedade define ou retorna o conteúdo HTML (HTML interno) de um elemento.

(getElementById)
O getElementById()método retorna um elemento com um valor especificado.
O getElementById()método retorna nullse o elemento não existir.
O getElementById()método é um dos métodos mais comuns no HTML DOM. É usado quase sempre que você deseja ler ou editar um elemento HTML.

*/

//let titulo = document.querySelector('h1');
//titulo.innerHTML = 'Jogo do Numero Secreto';

//let paragrafo = document.querySelector('p');
//paragrafo.innerHTML = 'Escolha um numero entre 1 e 10';