<?php
    //1° Exemplo
    $nome = "Gustavo";
    $sobrenome = "Guanabara";

    echo '1º Exemplo: $nome $sobrenome \u{1F596} ';
    echo "1º Exemplo: $nome $sobrenome \u{1F596} ";

    //2° Exemplo
    $nome2 = 'Gustavo';
    $sobrenome2 = 'Guanabara';
    
    echo " 2º Exemplo: $nome2 $sobrenome2 \u{1F596} ";
    echo ' 2º Exemplo: $nome2 $sobrenome2 \u{1F596} ';

    //3° Exemplo
    $nome3 = 'Gustavo \u{1F596}';
    $sobrenome3 = "Guanabara \u{1F596}";

    echo " 3º Exemplo: $nome3 $sobrenome3 ";
    echo ' 3º Exemplo: $nome3 $sobrenome3 ';

    //4° Exemplo 
    const CANAL = "Curso em Video \u{1F499}";
    echo " 4º Exemplo: Eu adoro o CANAL" ;
    echo " 4º Exemplo: Eu adoro o  ". CANAL; 

    //5° Exemplo 
    echo " 5º Exemplo: Estamos no ano de " . date('y') ;

    //6° Exemplo
    $nome4 = "Gustavo";
    $sobrenome4 = "Guanabara";
    $apelido = "Gafanhoto";
    echo " 6º Exemplo: $nome4 $sobrenome4 $apelido ";
    echo " 6º Exemplo: $nome4 '$sobrenome4' $apelido ";
    echo " 6º Exemplo: $nome4 \"$sobrenome4\" $apelido ";
    echo ' 6º Exemplo: $nome4 \'$sobrenome4\' $apelido ';
    echo " 6º Exemplo: $nome4 \n\t \"$sobrenome4\" \t\t $apelido "; 

    //7° Exemplo
    $canal = "Curso em Video";
    $ano = date('Y');
    // echo <<< TESTE 
    //     Olá galera do $canal!
    //             Tudo bem co vocês?
    //         Como está sendo esse ano de $ano?
    //     Abraço! \u{1F596}
    // TESTE;

    //8° Exemplo 
    $canal2 = "Curso em Video";
    $ano2 = date('Y');
    //  echo <<< 'TESTE' 
    //      Olá galera do $canal!
    //             Tudo bem co vocês?
    //         Como está sendo esse ano de $ano?
    //     Abraço! \u{1F596}
    //  TESTE;

?>