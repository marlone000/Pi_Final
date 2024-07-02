<?php

$id = $_POST["id"];
$nome = $_POST["nome"];
$nome_jap = $_POST["nome_jap"];
$autor = $_POST["autor"];
$capitulos = $_POST["capitulos"];
$qtd_eps = $_POST["qtd_eps"];
$sinopse = $_POST["sinopse"];
$img = $_POST["img"];

//  echo "$nome";

include "conexao.php";

$sql = "insert into animes(id, nome, nome_jap, autor, capitulos,qtd_eps, sinopse, img ) values('$id', '$nome', '$nome_jap', '$autor', '$capitulos', '$finalizado', '$qtd_eps', '$img')";
echo $sql;

$resultado = mysqli_query($conexao, $sql);

mysqli_close($conexao);

header("location:admin.php");
?>