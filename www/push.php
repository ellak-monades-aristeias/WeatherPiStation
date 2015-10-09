<?php
include_once 'config.php';

try {

    $dbh = new PDO('mysql:dbname='.$dbname.';host='.$servername.';port='.$port, $username, $password);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    //echo 'success connecting to DB!';
    try {
        if (isset($_GET["APIkey"]) && isset($_GET["data"])) {
            //TODO Check APIkey for validity and security
           $apiKey = $_GET["APIkey"];
           $data = $_GET["data"];

           $parsed = json_decode($data, true);
           echo "debug\n";
           echo $parsed[Date and time];

        }
    } catch {
        echo '{"Error" :  "Reading APIkey or data. Please check if data is in json form!"}';
    }

    $dbh = null;
} catch (PDOException $e) {
    echo 'Error sql: ' . $e->getMessage();
}
?>
