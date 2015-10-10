<?php
include_once 'config.php';

try {

    $dbh = new PDO('mysql:dbname='.$dbname.';host='.$servername.';port='.$port, $username, $password);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo 'success connecting to DB!';
    if (isset($_GET["APIkey"]) && isset($_POST["data"])) {
        //TODO Check APIkey for validity and security
       $apiKey = $_GET["APIkey"];
       $data = $_POST["data"];

       echo $data;
    }
    //echo '{"Error" :  "Reading APIkey or data. Please check if data is in json form!"}';

       $apiKey = $_GET["APIkey"];
       echo $apiKey;
    $dbh = null;
} catch (PDOException $e) {
    echo 'Error sql: ' . $e->getMessage();
}
?>
