<?php

//Configuração ddo banco de dados
$db_host = "localhost"; //Hostname do servidor do banco de dados 
$db_username = "root"; //nome  do usuario para conectar ao banco de dados
$db_password = ""; //senha para se conectar ao banco de dados (vazio é sem senha)
$db__name = "db_biblioteca"; //nome do banco de dados a conectar


//conectar ao banco de dados
$conn = new mysqli($db_host, $db_username, $db_password, $db__name);


//verificar se a conexão foi bem-sucedida
if ($conn->connect_error){
    //se houver um erro, exibir mensagem de erro e encerrar a execução do script
    //a seta -> é usada para acessar propriedades  e métodos de objetos em PHP, tornando o código mais legivel  e fácil de entender
    die("Erro ao conectar ao banco de dados: " . $conn->connect_error);
}


else{
    echo "PARABÉNS!!! A conexão ao banco de dados ocorreu normalmente";
}


?>