<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CSV Import/Export</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        button {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>CSV Import/Export</h1>

        <?php
        // Überprüfen, ob eine Datei hochgeladen wurde
        if(isset($_FILES['file'])) {
            $file = $_FILES['file'];

            // Überprüfen, ob die Datei eine CSV-Datei ist
            $fileType = pathinfo($file['name'], PATHINFO_EXTENSION);
            if($fileType === 'csv') {
                // Verbindung zur Datenbank herstellen (ersetze die Platzhalter mit den tatsächlichen Werten)
                $db = new mysqli("172.168.0.2:3306", "root", "Hallo.123", "dwlscreen");

                // Überprüfen, ob die Verbindung erfolgreich hergestellt wurde
                if($db->connect_error) {
                    die("Verbindung fehlgeschlagen: " . $db->connect_error);
                }

                // CSV-Datei einlesen und Daten in die Datenbank importieren
                $csvData = file_get_contents($file['tmp_name']);
                $lines = explode("\n", $csvData);
                
                foreach($lines as $line) {
                    // Ignoriere leere Zeilen
                    if (!empty(trim($line))) {
                        $data = str_getcsv($line, ';');
                        $firstName = $data[0];
                        $lastName = $data[1];
                        $employmentDate = $data[2];
                        $birthday = $data[3];

                        // Hier sollte die eigentliche Datenbank-Insert-Anweisung stehen
                        // (ersetze die Platzhalter mit den tatsächlichen Spaltennamen und Werten)
                        $insertQuery = "INSERT INTO mitarbeiter (Vorname, Nachname, Anstelldatum, Geburtstag) 
                                        VALUES ('$firstName', '$lastName', '$employmentDate', '$birthday')";

                        // Hier sollte die Abfrage ausgeführt werden (nicht vergessen, auf SQL-Injektion zu prüfen)
                        // Beispiel: $db->query($insertQuery);
                        if (!$db->query($insertQuery)) {
                            echo "Fehler beim Einfügen der Daten: " . $db->error . "<br>";
                        }
                    }
                }

                // Datenbank-Verbindung schließen
                $db->close();
                
                echo "Import erfolgreich!";
            } else {
                echo "Ungültiges Dateiformat. Nur CSV-Dateien sind erlaubt.";
            }
        } else {
            echo "Es wurde keine Datei hochgeladen.";
        }
        ?>

        <button onclick="window.location.href = 'index.php';">Zurück zur Startseite</button>
    </div>
</body>
</html>
