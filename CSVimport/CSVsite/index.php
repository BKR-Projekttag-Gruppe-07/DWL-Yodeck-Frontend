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

        h1 {
            text-align: center;
            color: #333;
        }

        form {
            text-align: center;
            margin: 20px auto;
            width: 80%;
            max-width: 400px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="file"] {
            display: block;
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
        }

        button[type="submit"],
        a button {
            display: inline-block;
            background-color: #4caf50;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover,
        a button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>CSV Import/Export</h1>

    <!-- Formular zum Hochladen der CSV-Datei -->
    <form action="upload.php" method="post" enctype="multipart/form-data">
        <label for="file">CSV-Datei hochladen:</label>
        <input type="file" name="file" id="file" accept=".csv">
        <button type="submit">Hochladen</button>
    </form>

    <br>

    <!-- Knopf zum Herunterladen der aktuellen Datenbank als CSV -->
    <div style="text-align: center;">
        <a href="export.php" download="mitarbeiter.csv">
            <button>Download Datenbank als CSV</button>
        </a>
    </div>
</body>
</html>
