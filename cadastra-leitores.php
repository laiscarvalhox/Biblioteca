<?php

include "config.php";
if(!$conn){
    die ("Conexão  falhou: " . mysqli_connect_error());

}
//recebe os dados 

$Nome= $_POST ['Nome'];
$DtNasc=$_POST ['DtNasc'];
$Celular= $_POST ['Celular'];
$Email= $_POST ['Email'];
$RA= $_POST ['RA'];
$Endereco= $_POST ['Endereco'];
$Num_End= $_POST ['Num_End'];
$Bairro= $_POST ['Bairro'];
$Cidade= $_POST ['Cidade'];

//cria variável para inserir o registro 
$sql = "INSERT INTO `leitores`
(`Nome`, `DtNasc`, `Celular`, `Email`, `RA`, `Enderco`, `NumEnd`, `Bairro`, `CidadeUF`) VALUES 
('$Nome','$DtNasc','$Celular','$Email','$RA','$Endereco','$Num_End','$Bairro','$Cidade')";

//executa a consulta SQL. Se  falhar, exibe o erro do banco de dados 
$query  = mysqli_query(mysql: $conn,query: $sql) or
die (mysqli_error(mysql: $sb));

if($query){
    echo "<center>";
    echo "cadrasto  realizado com sucesso!<br>";
    echo "<a href='paginainic.html'><button title='Home page'>Voltar</button></a>";
} else {
    echo "<center>";
    echo "Erro ao cadastrar!<br>";
    echo "<a href='index.php'><button title='Home page'>Voltar</button></a>";
    echo "/center>";
    }

?>






