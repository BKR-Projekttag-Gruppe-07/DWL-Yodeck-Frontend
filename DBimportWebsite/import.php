<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $csvFile = $_FILES["csvFile"]["tmp_name"];

    // MySQL Connection
    $servername = "localhost:3306";
    $username = "dwluser";
    $password = "Hallo.123";
    $dbname = "dwlscreen";

    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // CSV to MySQL
    if (($handle = fopen($csvFile, "r")) !== FALSE) {
        while (($data = fgetcsv($handle, 1000, ";")) !== FALSE) {
            $sql = "INSERT INTO mitarbeiter (ID, Vorname, Nachname, Anstelldatum, Geburtstag) VALUES ('$data[0]', '$data[1]', '$data[2]','$data[3]','$data[4]')";
            $conn->query($sql);
        }
        fclose($handle);

        // Redirect to the success page
        header("Location: ready.html");
        exit();
    } else {
        echo "Fehler beim Lesen der CSV-Datei.";
    }

    $conn->close();
}
?>
