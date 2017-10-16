<?php
  $serverName = "localhost";
  $username = "username";
  $password = "";

  function conn() {
    //create connection
    $connect = new mysqli($GLOBALS['serverName'], $GLOBALS['username'], $globals['password']);
  }

  function testConn($a) {
    if ($a->connect_error) {
      die("Connection failed: " . $a->connect_eror);
    }
  echo "Connected Successfully";
  }
 ?>
