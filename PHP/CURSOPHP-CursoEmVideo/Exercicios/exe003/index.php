<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tipos primitivos em PHP</title>
</head>
<body>
    <h1>Teste de tipos primitivos </h1>
    <?php 
        /* $num = 300;
        $num = 0x1A;(0x = hexadecimal)
        $num = 0b1011;(0b = binário)
        $num = 010;(0 = Octal)
        echo "O valor da variavel num é $num";*/

        //$v = 300;
        // $v = 45.2;
        // var_dump($v);

        // $num = 3e2;// 3 x 10(2)
        // echo "O valor da variavel num é $num";
        
        // $num = (integer)3e2;//Coerção
        // echo "O valor da variavel num é $num ";
        // var_dump($num);

        // $num =(int) "950";
        // var_dump($num);

        // $casado = false;
        // var_dump($casado);
        // print("0 valor para casado é $casado ");

        // $vet = [6, 2, 9, 3, 5];
        // echo("O vetor é $vet");
        // var_dump($vet);

        class Pessoa{
            private string $nome;
        }

        $p = new Pessoa;
        var_dump($p);
    ?>
</body>
</html>