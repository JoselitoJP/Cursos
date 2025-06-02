<?php 
    $min = 0;
    $max = 100;

    $num = mt_rand($min, $max);
    // mt_rand() = 1997 - Mersenne Twister
    // A partir do PHP 7.1, rand() é um sinples apontaento para mt_rand()

    //$num = random_int($min, $max);
    // random_int() gera números aleatórios criptograficamente seguros
    
    // $num = rand($min, $max);
    // rand() = 1951 - Linear Congrential Gererator
    
    

    echo "Gerando u número aleatório entre $min e $max... \n";
    echo "O número gerado foi $num";
?>