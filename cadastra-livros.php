<?php
include "config.php";


$Titulo = $_POST ['Titulo'];
$Autor= $_POST ['Autor'];
$Editora= $_POST ['Editora'];
$Sinopse= $_POST ['Sinopse'];
$Anopublicado = $_POST ['Anopublicado'];
$Genero = $_POST ['Genero'];
$Paginas = $_POST ['Paginas'];


$sql = "INSERT INTO `livros`
(`Titulo`, `Autor`, `Editora`, `Sinopse`, `Anopublicacao`, `Genero`, `Paginas`) VALUES 
('$Titulo','$Autor','$Editora','$Sinopse','$Anopublicado','$Genero','$Paginas')";


$query  = mysqli_query(mysql: $conn,query: $sql) or
die (mysqli_error(mysql: $sb));


if($query){
    echo "<center>";
    echo "cadrasto  realizado com sucesso!<br>";
    echo "<a href='index.php'><button title='Home page'>Voltar</button></a>";
} else {
    echo "<center>";
    echo "Erro ao cadastrar!<br>";
    echo "<a href='index.php'><button title='Home page'>Voltar</button></a>";
    echo "/center>";
    }

?>