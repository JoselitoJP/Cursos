<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Resultado</title>
</head>
<bod>
    <header>
        <h1>Resultado do processamento</h1>
    </header>
    <main>
        <?php 
        //Variavel Super Global - Já declarada no PHP.
        // Outras Variavel Super Globais($_POST, $_REQUEST).
        //A Variavel Super Global $_REQUEST é uma junção da $_GET, $_POST e $_COOKIES.

            $nome = $_GET["nome"] ?? "sem nome";
            $sobrenome = $_GET["sobrenome"] ?? "desconhecido";
            echo "<p>É um prazer te conhecer,<strong> $nome $sobrenome </strong>! Esse é o meu site!"

        // ?? é um operador de coalescência nula, que impede de dar erro do tipo ausencia de informação dentro da variavel.
        ?>
        <p><a href="javascript:history.go(-1)">Voltar para a página anterior</a></p><!--Esse codigo leva a página anterior feito em javascript-->
    </main>

</body>
</html>