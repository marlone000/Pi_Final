<?php include "./cabecalho.php"?>
<h2>Cadastrar um anime novo</h2>
<form method="post" action="inserir.php">
    <label for="nome">nome</label>
         <input type="text">
         <br>
        <label for="nome_jap">nome_jap</label>
        <input type="text">
         <br>
         <label for="autor">autor</label>
         <input type="text" >
         <br>
         <label for="capitulos">capitulos</label>
         <input type="number">
         <br>
         <label for="qtd_eps">quantidade de episódios</label>
         <input type="number">
         <br>
         <label for="sinopse">sinopse</label>
         <input type="text">
         <br>
         <label for="img">imagem</label>
         <input type="file" accept="/IMG">
<br>
    <button type="submit" class="btn btn-primary">Salvar um anime</button>
</form>


<?php include "./rodape.php"?>