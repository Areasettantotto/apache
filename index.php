<?php
// Pagina principale
require_once __DIR__ . '/config/db.php';

if (isset($pdo)) {
  echo "<p>Connessione al database riuscita!</p>";
} else {
  echo "<p>Connessione al database fallita.</p>";
}

// Conta i record nella tabella clienti
try {
  $stmt = $pdo->query("SELECT COUNT(*) as totale FROM clienti");
  $row = $stmt->fetch();
  echo "<p>Record presenti nella tabella clienti: <strong>" . $row['totale'] . "</strong></p>";
} catch (Exception $e) {
  echo "<p>Errore nel conteggio dei clienti: " . htmlspecialchars($e->getMessage()) . "</p>";
}

echo phpinfo();
