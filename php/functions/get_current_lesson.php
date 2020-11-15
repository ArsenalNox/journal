<?php
session_start();
include_once "../dtb/dtb.php";
if(isset($_COOKIE['SSSIDH'])){
  date_default_timezone_set('Asia/Yekaterinburg');
  $datetime = date('H:i:s');
  $datecur = date('Y-m-d');
  $sql = 'SELECT * FROM `lessontimes` WHERE "'.$datetime.'" BETWEEN lessonTime AND lessonDuration';
  $result = mysqli_query($conn, $sql);
  if($result){
    if(mysqli_num_rows($result)>0){
      $row = mysqli_fetch_assoc($result);
      $lnum = $row['lessonNumber'];
      $sqlles = ("SELECT lessonName, CABINETFK FROM `".$_SESSION['sch']."` WHERE DATE_SCHEDULE='".$datecur."' AND NUMBERFK='".$lnum."'");
      $lesrus = mysqli_query($conn, $sqlles);
      if($lesrus){
        if(mysqli_num_rows($lesrus)>0){
          $lrow = mysqli_fetch_assoc($lesrus);
          echo ' '.$lrow['lessonName'].' s '.$lrow['CABINETFK'] ;
        }
      }
    }
  }
}
?>
