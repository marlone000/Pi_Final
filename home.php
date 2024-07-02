<?php include ("header.php");
include ("./conexao/conexao.php")
?>
<!-- Carrousel inicio -->
<section class="image-slider img-fluid">
        <div class="seta-esquerda">
            <i class="fa-solid fa-arrow-left"></i>
        </div>
        <div class="seta-direita">
            <i class="fa-solid fa-arrow-right"></i>
        </div>
       <div class="rubrica">
            <h1>Evangelion</h1>
            <p>Evangelion é um anime muito cativante que te prende em um universo totalmente oposto de nossas realidades</p>
        </div>
    </section>
<!-- Carrousel Fim  -->
 
<!-- conteudo site inicio -->
   
<section class="flex capas">
<?php
      $sql = "select * from animes";
      $resultado = mysqli_query($conexao, $sql);
      while($umAnime = mysqli_fetch_assoc($resultado)):
      ?>
        <div>
            <a href="animes.php?id=<?=$umAnime['id'];?>">
            <img src="<?=$umAnime['img']?>" alt="<?=$umAnime['nome'];?>" class="img-fluid">
            <h2><?=$umAnime['nome']?></h2>
        </div>
        <?php endwhile; ?>
</section>
<br><br><br>
    <!-- conteudo site fim -->
<?php include ("footer.php");?>