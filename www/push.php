<?php
include_once 'config.php';

try {

    $dbh = new PDO('mysql:dbname='.$dbname.';host='.$servername.';port='.$port, $username, $password);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo 'success connecting to DB!';
    if (isset($_GET["APIkey"]) && isset($_GET["data"])) {
        //TODO Check APIkey for validity and security
        $apiKey = $_GET["APIkey"];
        $data = $_GET["data"];

        $stmt = $dbh->prepare("INSERT INTO `weatherDB` (`RPi_id`, `jsonData`) VALUES (:id, :jsonData)");
        $stmt->bindParam(':id', $apiKey);
        $stmt->bindParam(':jsonData', $data);
        $stmt->execute();
        echo 'Debug1';
    }
    $dbh = null;
} catch (PDOException $e) {
    echo 'Error sql: ' . $e->getMessage();
}
?>
