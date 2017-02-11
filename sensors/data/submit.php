<?php
require_once 'include/config.inc.php';
$mysqli = new mysqli($server, $login, $password, $db);

parse_str(file_get_contents("php://input"),$post_vars);
if($_SERVER['REQUEST_METHOD'] == 'GET') {
    #echo $_GET['mac']." is the mac<br>";
    $result = $mysqli->query("SELECT id FROM devices WHERE mac = '".$_GET['mac']."'");
    
        if($result->num_rows == 0) {
            #echo "Device mit MAC: ". $_GET['mac'] . " is not allowed";
            $mysqli->close();
        } else {
            $info=$_GET['info'];
            
            $partial = explode(',', $info);
            $final = array();
            array_walk($partial, function($val,$key) use(&$final){
                list($key, $value) = explode('=', $val);
                $final[$key] = $value;
            });
            #echo "<pre>";
            #print_r($final);        
            #echo "</pre>";
            #var_dump($final["BufferLevel"]);
            
            $sql = "INSERT INTO monitoring (mac, alarm, BufferLevel, Latency, FrameDup, FrameDrop, SoftErrorCount, StreamNumber, Bitrate, Reconnects, Error, Volume, UpTime, IP_address, URL) Values (
                    '".$_GET['mac']."',
                    ".$_GET['alarm'].",
                    ".$final["BufferLevel"].",
                    ".$final["Latency"].",
                    ".$final["FrameDup"].",
                    ".$final["FrameDrop"].",
                    ".$final["SoftErrorCount"].",
                    ".$final["StreamNumber"].",
                    ".$final["Bitrate"].",
                    ".$final["Reconnects"].",
                    ".$final["Error"].",
                    ".$final["Volume"].",
                    ".$final["UpTime"].",
                    '".$final["IP_address"]."',
                    '".$final["URL"]."'
                    )";
            #echo "<br><br>" . $sql;
            $result = $mysqli->query($sql);
            $mysqli->close();
        }
        
} elseif($_SERVER['REQUEST_METHOD'] == 'PUT') {
    exit;
}
?>