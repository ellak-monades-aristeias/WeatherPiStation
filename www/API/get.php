<?php
include_once '../config.php';
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
if (isset($_GET["rpiID"])) {
    //TODO Check APIkey for validity and security
    $rpiID = $_GET["rpiID"];
    $db = mysql_connect($servername,$username,$password);
    if (!$db) {
        die('Could not connect to db: ' . mysql_error());
    }
    mysql_select_db($dbname,$db);
    $sql = "SELECT jsonData FROM `weatherDB` WHERE RPi_id='" . $rpiID . "' LIMIT 0,3";
    $result = mysql_query($sql, $db);
    $response = array();
    while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
        $row_array = $row[0];
        array_push($response,$row_array);
    }
    $resp = '{"data": [';
    foreach ($response as $value) {
        $resp .= $value . ",";
    }
    $resp = substr($resp, 0, -1);
    $resp .= ']}';
    echo $resp;
    fclose($db);
} else {
    echo 'Please provide a legal Raspberry Pi ID.';
}
?>
