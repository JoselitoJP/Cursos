<!DOCTYPE html>
<html lang="pt_br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Desafio PHP_003</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <main>
        <h1>Conversor de Moedas</h1>
        <?php
        //Converção de Real para Dolar
        //Cotação copiada do Google
        $cotação = 5.17;

        //Quanto $$ você tem?
        $real = $_REQUEST["din"] ?? 0;

        //Equivalência em dólar
        $dólar = $real / $cotação;
        //Formatação de moedas com internacionalização!
        // Biblioteca intl(Internallization PHP)
        //numfmt_create(A função numfmt_create() no PHP faz parte da extensão Intl (Internationalization Functions) e é utilizada para criar um formatador de números com base na localidade (idioma e região) e no estilo de formatação desejado, como moeda, decimal, percentual, entre outros.)

        $padrão = numfmt_create("pt_BR", NumberFormatter::CURRENCY);

        echo "<p> Seus <strong>" . numfmt_format_currency($padrão, $real, "BRL"). "</strong> equivalem a <strong>" . numfmt_format_currency($padrão, $dólar, "USD") . "</strong></p>";
        ?>
        <button onclick="javascript:history.go(-1)">Voltar</button>
    </main>
</body>
</html>