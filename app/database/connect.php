<?php

$user = "mtake";
$pass = "Manabu2010";

//DBと接続
try {
    $pdo = new PDO('mysql:host=localhost;dbname=ikefuku40_2chanbbs', $user, $pass);
    // echo "DBとの接続に成功しました";
} catch (PDOException $error) {
    echo $error->getMessage();
}
