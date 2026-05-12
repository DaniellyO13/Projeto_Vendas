<?php 

//Incluir a conexão do banco de dados

include 'conexao.php';

//Guardar a introdução do mysql

$insert = "INSERT INTO tb_cliente VALUES (null, 'ConectaCare', 11997815606, 'Danielly Vitoria')";

//Função query irá executar a instrução sql dentro do banco

$resultado = $conexao->query($insert);
                                                                
if($resultado == true) {
    echo "<script>alert ('Cliente cadastrado com sucesso') </script>";
}

?>