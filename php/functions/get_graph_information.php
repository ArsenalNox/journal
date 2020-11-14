<?php
include_once "../dtb/dtb.php";
if(isset($_COOKIE['SSSIDH'])){
  $son = array('name' => '5', 'value' => '340');
  $son = array('name' => '4', 'value' => '120');
  $son = array('name' => '3', 'value' => '33');
  $son = array('name' => '2', 'value' => '10');
  echo json_encode($son);
}
?>
