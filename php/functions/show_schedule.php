<?php
include_once '../dtb/dtb.php';
    if(isset($_COOKIE['SSSIDH'])){
        $uid = $_COOKIE['SSSIDH'];
        $class = $_COOKIE['SSSCLS'];
        $this_monday = strtotime('this monday');
        $weekNo = date('W');
        $this_monday = date('Y-m-d', $this_monday);
        $this_monday = str_replace('-','.',$this_monday);
        $day = array('Понедельник','Вторник','Среда','Четверг','Пятница','Суббота','Воскресенье');
        $sch = "schedule_".$this_monday."_".$class;
        $sql = "SELECT * FROM `$sch`";
        $result = mysqli_query($conn, $sql);
        if($result){
          if(mysqli_num_rows($result)>0){
            $dateCounter = 0;
            $currentDate = 0;
            echo "<table> <tr class='day-table'>";
            while ($row = mysqli_fetch_assoc($result)) {
              if($currentDate == 0){
                  $currentDate = $row['DATE_SCHEDULE'];
                  echo "<td> ".$day[$dateCounter]." $currentDate </td>";
                  $dateCounter++;
              } else if( !($currentDate === $row['DATE_SCHEDULE']) ){
                $currentDate = $row['DATE_SCHEDULE'];
                echo " </tr> <tr class='day-table'> <td> ".$day[$dateCounter]." $currentDate </td> ";
                $dateCounter++;
              }
              $lessonName = $row['lessonName'];
              $lessonNumber = $row['NUMBERFK'];
              $date = $row['DATE_SCHEDULE'];
              echo "<td> $lessonNumber: $lessonName <br> Домашнее задание:". $row['HOMEWORK']." <hr> </td>";
              }
            echo "</tr> </table";
          } else {
            echo "<p> Отсутсвует результат </p>";
          }
        } else {
          echo "<p> Ошибка запроса: SQL = $sql </p>";
        }
    }
    else{
        echo 'Error';
    }

?>
