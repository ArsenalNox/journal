<?php
//Возвращает статистику (кол-во оценок) для составления графика
include_once "../dtb/dtb.php";

if(isset($_COOKIE['SSSIDH'])){
  $mark5q = 0;
  $mark4q = 0;
  $mark3q = 0;
  $mark2q = 0;
  $son = [];
  $uqid = $_COOKIE['SSSUIDH'];
  $sql = "SELECT * FROM marksall WHERE studid='$uqid'";
  if(isset($_POST['date1'])){
    $date_start = $_POST['date1'];
    $date_end = $_POST['date2'];
    $sql = "SELECT * FROM marksall WHERE studid='$uqid' AND date >= '$date_start' and date <= '$date_end' ORDER BY date ";
  }
  $result = mysqli_query($conn, $sql);
  if($result){
    if( mysqli_num_rows($result) > 0 ){
      while ($row = mysqli_fetch_assoc($result)) {
        switch ($row['mark']) {
          case '5':
            $mark5q++;
            break;
          case '4':
            $mark4q++;
            break;
          case '3':
            $mark3q++;
            break;
          case '2':
            $mark2q++;
            break;
        }
      }
    }
  }
  $son[] = array('name' => '5', 'value' => "$mark5q");
  $son[] = array('name' => '4', 'value' => "$mark4q");
  $son[] = array('name' => '3', 'value' => "$mark3q");
  $son[] = array('name' => '2', 'value' => "$mark2q");
  //Для дебага $son[] = array('name' => 'info', 'value' => "$sql");
  echo json_encode($son);
}
?>
