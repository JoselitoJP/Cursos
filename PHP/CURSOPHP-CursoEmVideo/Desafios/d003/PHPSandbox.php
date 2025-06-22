<?php
    //Converção de Real para Dolar
    //Cotação copiada do Google
    $cotação = 5.17;

    //Quanto $$ você tem?
    $real = 1000;

    //Equivalência em dólar
    $dólar = $real / $cotação;

    //Mostrar o resultado
    //Geito simples de foratar[echo "Seus R\$:" . number_format($real, 2, ",",".") . " equivalem a US\$:" . number_format($dólar,2, ",",".");]

    //Formatação de moedas com internacionalização!
    // Biblioteca intl(Internallization PHP)
    //numfmt_create(A função numfmt_create() no PHP faz parte da extensão Intl (Internationalization Functions) e é utilizada para criar um formatador de números com base na localidade (idioma e região) e no estilo de formatação desejado, como moeda, decimal, percentual, entre outros.)

    $padrão = numfmt_create("pt_BR", NumberFormatter::CURRENCY);

    echo "Seus " . numfmt_format_currency($padrão, $real, "BRL"). " equivalem a " . numfmt_format_currency($padrão, $dólar, "USD");
?>