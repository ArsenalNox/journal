<?php
//Возвращает HTML бегущией строки предметов с плохими средними значениями оценок
include_once "../dtb/dtb.php";
if(isset($_COOKIE['SSSIDH'])){
  $marqueeText = ' ';
  $uqid = $_COOKIE['SSSUIDH'];
  $lessons = [];
  $sql = "SELECT DISTINCT lessonName FROM marksall WHERE studid='$uqid'";
  $result = mysqli_query($conn, $sql);

  if($result){
    if( mysqli_num_rows($result) > 0 ){
      while ($row = mysqli_fetch_assoc($result)) {
        $lessons[] = $row['lessonName'];
      }
    }
  }

  for ($i=0; $i < sizeof($lessons); $i++) {
    $sql = "SELECT * FROM marksall WHERE studid='$uqid' AND lessonName='".$lessons[$i]."'";
    $result = mysqli_query($conn, $sql);
    $mm = 0;
    $mq = 0;
    if($result){
      if( mysqli_num_rows($result) > 0 ){
        while ($row = mysqli_fetch_assoc($result)) {
          $mm += $row['mark'];
          $mq++;
          $median = ($mm/$mq);
        }
        echo "Средний балл ".$lessons[$i].' '.$median;
      }
    } else {
      echo "Ошибка запроса";
    }
  }
}

?>
