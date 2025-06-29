<?php
// config/env.php
// Carica le variabili d'ambiente dal file .env o env.txt

function loadEnv($path)
{
  if (!file_exists($path)) return;
  $lines = file($path, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
  foreach ($lines as $line) {
    if (strpos(trim($line), '#') === 0 || strpos(trim($line), 'Rename this file') === 0) continue;
    if (!strpos($line, '=')) continue;
    list($name, $value) = explode('=', $line, 2);
    $name = trim($name);
    $value = trim($value);
    if (!array_key_exists($name, $_ENV)) {
      $_ENV[$name] = $value;
    }
  }
}

// Prova a caricare prima .env, poi env.txt
$envPath = __DIR__ . '/../.env';
if (!file_exists($envPath)) {
  $envPath = __DIR__ . '/../env.txt';
}
loadEnv($envPath);
