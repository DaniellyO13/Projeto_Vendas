<?php 

//Incluir a conexão do banco de dados

include 'conexao.php';

//Guardar a introdução do mysql

$insert = "INSERT INTO tb_produto VALUES (null, 'Ssd NMVE Kingston 1tb', 1259)";

//Função query irá executar a instrução sql dentro do banco

$result = $conexao->query($insert);

if($result == true) {
    echo "<script>alert('Produto Cadastrado Com Sucesso') </script>";
}

?>