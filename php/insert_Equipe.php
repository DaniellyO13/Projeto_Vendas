<?php 

//Incluir a conexão do banco de dados

include 'conexao.php';

//Guardar a introdução do mysql

$insert = "INSERT INTO tb_equipe VALUES (null, 'Alpha', 'Norte')";

//Função query irá executar a instrução sql dentro do banco

$resultado = $conexao->query($insert);
                                                                
if($resultado == true) {
    echo "<script>alert ('Equipe cadastrada com sucesso') </script>";
}

?>