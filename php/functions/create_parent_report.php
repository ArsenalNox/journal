<?php
//Сздаёт доклад об успевакмости родителю
include_once "";
$class = $_COOKIE['SSSCLS'];
$uid = $_COOKIE['SSSUIDH'];
$sql = "SELECT * FROM marksall WHERE studid='$uqid' ORDER BY date";

?>
