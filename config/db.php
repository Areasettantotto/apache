<?php
// config/db.php
// Connessione al database tramite PDO con gestione delle eccezioni
// Usa le variabili d'ambiente caricate da config/env.php

require_once __DIR__ . '/env.php';

$host = $_ENV['DB_HOST'] ?? 'localhost';
$db   = $_ENV['MYSQL_DATABASE'] ?? 'last';
$user = $_ENV['MYSQL_USER'] ?? 'root';
$pass = $_ENV['MYSQL_PASSWORD'] ?? 'root';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
  PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
  PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
  PDO::ATTR_EMULATE_PREPARES   => false,
];

try {
  $pdo = new PDO($dsn, $user, $pass, $options);
} catch (PDOException $e) {
  // Gestione dell'errore
  throw new PDOException('Errore di connessione al database: ' . $e->getMessage(), (int)$e->getCode());
}
