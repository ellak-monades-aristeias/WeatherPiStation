<?php
include_once '../config.php';

try {

    $dbh = new PDO('mysql:dbname='.$dbname.';host='.$servername.';port='.$port, $username, $password);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    if (isset($_GET["rpiID"])) {
        //TODO Check APIkey for validity and security
        $rpiID = $_GET["rpiID"];
        $stmt = $dbh->prepare("SELECT jsonData FROM `weatherDB` WHERE RPi_id=:id LIMIT 0,3");
        $stmt->bindParam(':id', $rpiID);
        $result = $stmt->execute();
        echo $result;



    }
    $dbh = null;
} catch (PDOException $e) {
    echo 'Error sql: ' . $e->getMessage();
}
?>
