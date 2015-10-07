<?php
include_once 'config.php';

try {

    $dbh = new PDO('mysql:dbname='.$dbname.';host='.$servername.';port='.$port, $username, $password);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    echo 'success connecting to DB!';

    $dbh = null;
} catch (PDOException $e) {
    echo 'Error sql: ' . $e->getMessage();
}
?>
