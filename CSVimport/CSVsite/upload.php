<?php
if (isset($_POST["submit"])) {
    // Specify your MySQL connection details
    $hostname = "localhost";
    $username = "dein_benutzername";
    $password = "dein_passwort";
    $database = "deine_datenbank";

    $targetDir = "uploads/";
    $targetFile = $targetDir . basename($_FILES["file"]["name"]);
    $uploadOk = 1;
    $fileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));

    // Check if the file is a CSV file
    if ($fileType != "csv") {
        echo "Sorry, only CSV files are allowed.";
        $uploadOk = 0;
    }

    // Check for upload errors
    if ($uploadOk == 0) {
        echo "Sorry, your file was not uploaded.";
    } else {
        if (move_uploaded_file($_FILES["file"]["tmp_name"], $targetFile)) {
            echo "The file " . basename($_FILES["file"]["name"]) . " was successfully uploaded.";

            // Establish a connection to the MySQL database
            $conn = new mysqli($hostname, $username, $password, $database);

            // Check the connection
            if ($conn->connect_error) {
                die("Connection to the MySQL database failed: " . $conn->connect_error);
            }

            // Import CSV file into the MySQL database
            $csvFile = fopen($targetFile, "r");
            $header = fgetcsv($csvFile, 1000, ";"); // Get the header row

            while (($data = fgetcsv($csvFile, 1000, ";")) !== FALSE) {
                $rowData = array_combine($header, $data);

                // Replace 'deine_tabelle' with the actual name of your table
                $sql = "INSERT INTO deine_tabelle (Vorname, Nachname, Anstelldatum, Geburtstag) 
                        VALUES ('" . $rowData['Vorname'] . "','" . $rowData['Nachname'] . "','" . $rowData['Anstelldatum'] . "','" . $rowData['Geburtstag'] . "')";
                $conn->query($sql);
            }
            fclose($csvFile);

            // Close the connection
            $conn->close();
        } else {
            echo "Sorry, there was an error uploading your file.";
        }
    }
}
?>
