<?php include("headerAnimeSobre.php");
include ("./conexao/conexao.php")
?>
 
<?php
  $id = $_GET['id'];
  $sql = "select * from animes where id = $id";
  $resultado = mysqli_query($conexao,$sql);
  while ($umAnime = mysqli_fetch_assoc($resultado)):
?>
  <!-- card com conteudo -->
  <div class="container">
    <div class="row">
      <section class="flex col-11 section">
          <div class="row justify-content-start">
            <h1 class="text-center"><?=$umAnime['nome']?></h1>
            <img src="<?=$umAnime['img']?>" alt="<?=$umAnime['nome']?>" class="img-fluid">
            <p class="text-start">Autor: <br><?=$umAnime['autor']?></p>
            <p class="text-start">Nome em japonês: <br><?=$umAnime['nome_jap']?></p>
            <p class="text-start">Capítulos do Mangá: <br><?=$umAnime['capitulos']?></p>

            <p class="text-start">Quantidade de episódios: <br><?=$umAnime['qtd_eps']?></p>

            <p class="text-start"> Sinopse: <br><?=$umAnime['sinopse']?></p>
          </div>
      </section>
    </div>
  </div>
<?php endwhile; ?>
  <!-- card com conteudo fim -->
  <?php include("footer.php")?>