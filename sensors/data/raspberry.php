<?php
require_once 'include/config.inc.php';
$mysqli = new mysqli($server, $login, $password, $db);

parse_str(file_get_contents("php://input"),$post_vars);
if($_SERVER['REQUEST_METHOD'] == 'GET') {
    echo $_GET['mac']." is the mac<br>";
    $result = $mysqli->query("SELECT id FROM devices WHERE mac = '".$_GET['mac']."'");
    
        if($result->num_rows == 0) {
            echo "Device mit MAC: ". $_GET['mac'] . " is not allowed";
            $mysqli->close();
        } else {
            
        }
} elseif($_SERVER['REQUEST_METHOD'] == 'PUT') {
    exit;
}
?>