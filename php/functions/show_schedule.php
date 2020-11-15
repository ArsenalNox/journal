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
        $sql = "SELECT * FROM `$sch` ORDER BY DATE_SCHEDULE";
        $result = mysqli_query($conn, $sql);
        if($result){
          if(mysqli_num_rows($result)>0){
            $dateCounter = 0;
            $currentDate = 0;
            echo "<table> <tr class='day-table'>";
            while ($row = mysqli_fetch_assoc($result)) {
              $marksql = "SELECT mark, comment FROM marksall WHERE studid=".$_COOKIE['SSSUIDH']." AND lessonId = ".$row['UNUIQE_ID'].";";
              $checkmark = mysqli_query($conn, $marksql);
              if($checkmark){
                if(mysqli_num_rows($checkmark) > 0){
                  $markRow = mysqli_fetch_assoc($checkmark);
                  $markstat = "Оценка: ".$markRow['mark'];
                  if(!($markRow['comment']=='')){
                    $markstat .= '<p> Комментарий к оценке: '.$markRow['comment']."</p>";
                  }
                }
              }

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
              echo "
              <td> $lessonNumber: $lessonName
              Кабинет: ".$row['CABINETFK']."
              <br> Тема занятия: ".$row['TOPIC']."
              <br> Домашнее задание:". $row['HOMEWORK']."
              $markstat
              <hr>
              </td>";
              }
              if($dateCounter < 6){
                for ($i=$dateCounter; $i < 6 ; $i++) {
                  echo " </tr> <tr class='day-table'> <td> ".$day[$i]." $currentDate <br> Расписание Отсутсвует </td> ";
                }
              }
            echo "</tr> </table>";
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
