<?php 

//Incluir a conexão do banco de dados

include 'conexao.php';

//Guardar a introdução do mysql

$insert = "INSERT INTO tb_venda VALUES (null, '2026-03-27', 1, 1900.00, 'Belo Horizonte', 2, 19, 9)";

//Função query irá executar a instrução sql dentro do banco

$resultado = $conexao->query($insert);
                                                                
if($resultado == true) {
    echo "<script>alert ('Venda cadastrada com sucesso') </script>";
}

?>