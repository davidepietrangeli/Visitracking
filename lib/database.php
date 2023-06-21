<?php

    function openconnection(){
    global $cfg;
    $conn = new mysqli( $cfg['dbhost'], $cfg['dbuser'], $cfg['dbpwd'], $cfg['dbname']);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    return $conn;
  }

  function closeconnection($myconnection){
    $myconnection->close();
  }


 ?>
