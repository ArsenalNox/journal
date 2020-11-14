<?php
include_once '../dtb/dtb.php';
    if(isset($_COOKIE['SSSIDH'])){
        $uid = $_COOKIE['SSSIDH'];
        $day = array('Понедельник','Вторник','Среда','Четверг','Пятница','Суббота','Воскресенье');
        $sql = "SELECT * FROM schedule_1";
        $result = mysqli_query($conn, $sql);
        if($result){
          if(mysqli_num_rows($result)>0){
            $dateCounter = 0;
            $currentDate = 0;
            echo "<table> <tr class='day-table'>";
            while ($row = mysqli_fetch_assoc($result)) {
              if($currentDate == 0){
                  $currentDate = $row['date'];
                  echo "<td> ".$day[$dateCounter]." $currentDate </td>";
                  $dateCounter++;
              } else if( !($currentDate === $row['date']) ){
                $currentDate = $row['date'];
                echo " </tr> <tr class='day-table'> <td> ".$day[$dateCounter]." $currentDate </td> ";
                $dateCounter++;
              }
              $lessonName = $row['name_lesson'];
              $lessonNumber = $row['num_lesson'];
              $date = $row['date'];
              echo "<td> $lessonNumber: $lessonName </td>";
              }
            echo "</tr> </table";
          } else {
            echo "<p> Отсутсвует результат </p>";
          }
        } else {
          echo "<p> Ошибка запроса </p>";
        }
    }
    else{
        echo 'Error: No COOKIE';
    }

?>
