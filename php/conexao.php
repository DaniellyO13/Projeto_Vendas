<?php 
//Informações necessárias para a conexão com o banco de dados

$service = 'localhost';
$user_bank = 'root';
$password_bank = 'root';
$nm_bank = 'bd_venda';

//Funções MYSQLi para a conexão com o banco de dados

$conexao = new mysqli($service, $user_bank, $password_bank, $nm_bank);

if($conexao->connect_error){
    echo "Erro na conexão";
}

?>                                                                                                                                                                                                                                                                                                                                                                                                      