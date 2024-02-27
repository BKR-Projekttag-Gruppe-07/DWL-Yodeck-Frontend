<?php
// Verbindung zur Datenbank herstellen (ersetze die Platzhalter mit den tatsächlichen Werten)
$db = new mysqli("172.168.0.2:3306", "root", "Hallo.123", "dwlscreen");

// Überprüfen, ob die Verbindung erfolgreich hergestellt wurde
if ($db->connect_error) {
    die("Verbindung fehlgeschlagen: " . $db->connect_error);
}

// Hier sollte die eigentliche Datenbank-Abfrage zum Abrufen der Daten stehen
// (ersetze die Platzhalter mit den tatsächlichen Spaltennamen)
$selectQuery = "SELECT Vorname, Nachname, Anstelldatum, Geburtstag FROM mitarbeiter";

$result = $db->query($selectQuery);

// Daten in CSV-Datei schreiben
$filename = "mitarbeiter.csv";
header('Content-Type: text/csv');
header('Content-Disposition: attachment; filename="' . $filename . '"');

$output = fopen('php://output', 'w');

// CSV-Header schreiben
fputcsv($output, array("Vorname", "Nachname", "Anstelldatum", "Geburtstag"), ';', '"');

// Daten aus der Datenbank auslesen und in die CSV schreiben
while ($row = $result->fetch_assoc()) {
    fputcsv($output, $row, ';', '"');
}

// Datenbank-Verbindung schließen
$db->close();
?>