// Aula02.Projeto Carrinho de Compras
alert('Você está feliz');

let totalGeral;
limpar();

function adicionar(){
	//recuperar valores nome do produto, quantidade e valor 
	let produto = document.getElementById('produto').value;
	let nomeProduto = produto.split('-')[0];
	let valorUnitario = produto.split('R$')[1]; 
	let quantidade = document.getElementById('quantidade').value;
	//calcular o preço, o nosso subtotal
	let preco = quantidade * valorUnitario;
	let carrinho = document.getElementById('lista-produtos');
	//adicionar no carrinho
	carrinho.innerHTML = carrinho.innerHTML + `<section class="carrinho__produtos__produto">
	<span class="texto-azul">${quantidade}x</span> ${nomeProduto} <span class="texto-azul">R$${preco}</span></section>`; 
	//atualizar o valor total
	totalGeral = totalGeral + preco;
	let campoTotal = document.getElementById('valor-total');
	campoTotal.textContent = `R$ ${totalGeral}`;
	document.getElementById('quantidade').value = 0;
	
}

function limpar(){	
	totalGeral = 0;
	document.getElementById('lista-produtos').innerHTML = '';
	document.getElementById('valor-total').textContent = 'R$ 0';

}


/*
	-split()
		O split()método de Stringvalores pega um padrão e divide essa string em uma lista ordenada de substrings, pesquisando o 
		padrão, coloca essas substrings em um array e retorna o array.

	Nessa aula, você aprendeu como:
		Utilizar a função split() no JavaScript, para separar trechos de uma String por um determinado delimitador;
		Recuperar valores digitados em campos de um formulário na página, via propriedade value;
		Modificar o código HTML de um elemento na página, via propriedade `innerHTML;
		Utilizar o recurso de Template String do JavaScript, para concatenar valores de variáveis em String.


*/