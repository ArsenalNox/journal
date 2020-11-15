<?php
session_start();
include_once 'php/dtb/dtb.php';
//// TODO: Теоретическая проверка токена
if(isset($_COOKIE['SSSIDH'])){
  $status = "VALIDATED";
  } else {
  header("Location: index.php");
}
?>
<!DOCTYPE html>
<html lang="ru" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="theme-color" content="#FFFFFF"/>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/svg.css">
    <link rel="stylesheet" href="css/right-nav-style.css">
    <link rel="apple-touch-icon" sizes="192x192" href="img/192.png">
    <link rel="apple-touch-icon" sizes="48x48" href="img/48.png">
    <link rel="apple-touch-icon" sizes="57x57" href="img/57.png">
    <!-- <link rel="apple-touch-icon" sizes="114x114" href="img/114.png"> -->
    <link rel="apple-touch-icon" sizes="512x512" href="img/512.png">
    <link rel="apple-touch-icon" sizes="1024x1024" href="img/1024.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/114.png" />
    <title>Статистика оценок</title>
  </head>
  <body onload='getGraphData(false)'>
    <nav>
      <div class="footer">
        <img src="./img/logo.png" class="logo">
        <h1 class="eljour">Электронный дневник</h1>
        <div class="burger">
          <input type="checkbox" id="nav-toggle" hidden>
          <nav class="nav">
            <label for="nav-toggle" class="nav-toggle" onclick>
              <!-- <img src="img/cross burger.png" class="cross"> -->
            </label>
            <h2 class="logo">
              <a href="#"></a>
            </h2>
            <div class="button-icon" onclick='ShowMenu()'></div>
            <ul class='menu'>
                <li> <a href="student.php">Главная</a></li>
                <li> <a href="grades.php"> Смотреть свои оценки </a> </li>
                <li> <a href="communication.php"> Общение с преподавателями </a> </li>
                <li> <a href="announce.php"> Объявления школы </a> </li>
                <li> <a href="php/functions/logout.php">Выйти из аккаунта</a>  </li>
                <br>
                <li> <span id='current-lesson'> </span> </li>
                <table class="callschedule">
                  <tr>
                    <th>Расписание звонокв</th>
                  <tr>
                    <td>8:30</td>
                    <td>9:15</td>
                  </tr>
                  <tr>
                    <td>9:20</td>
                    <td>10:05</td>
                  </tr>
                  <tr>
                    <td>10:15</td>
                    <td>10:50</td>
                  </tr>
                  <tr>
                    <td>11:10</td>
                    <td>11:55</td>
                  </tr>
                  <tr>
                    <td>12:10</td>
                    <td>12:55</td>
                  </tr>
                    <td>13:00</td>
                    <td>13:45</td>
                  </tr>
                </table>
                <?php echo '<li class="entrance"> Вы вошли как: '.$_COOKIE['SSSIDH'].'</li>'; ?>
              </ul>
          </div>
          </nav>
        </div>
      </div>
    </nav>
    <section class="marks-wrap">
      <div>
        <svg class="chart" width="270" height="270" viewBox="0 0 40 40">
          <circle id="circle1" class="unit" r="15.9" cx="50%" cy="50%"></circle>
          <circle id="circle2" class="unit" r="15.9" cx="50%" cy="50%"></circle>
          <circle id="circle3" class="unit" r="15.9" cx="50%" cy="50%"></circle>
          <circle id="circle4" class="unit" r="15.9" cx="50%" cy="50%"></circle>
          <ul class="caption-list">
            <li id="5" class="caption-item">5</li>
            <li id="4" class="caption-item">4</li>
            <li id="3" class="caption-item">3</li>
            <li id="2" class="caption-item">2</li>
          </ul>
        </svg>
        <ul class="list">
          <li id="chart5" class="caption-item">5</li>
          <li id="chart4" class="caption-item">4</li>
          <li id="chart3" class="caption-item">3</li>
          <li id="chart2" class="caption-item">2</li>
        </ul>
        <div id='123'> </div>
      </div>

      <hr>
      <div class="input-search-form" id='dform'>
        <section style='padding: 1rem;'>

        <label for="first-date">Показ оценок с</label>
          <input type="date" name="first-date" id='fd1'> по <input type="date" name="second-date" id='sd1'>
          <button onclick='getGradesBt(true)'>Показать оценки за период</button>
        </section>
         <hr>

         <section style='padding: 1rem;'>
          <label for="select-pr">Показ оценок по предмету <?php
          $sql = "SELECT DISTINCT lessonName FROM marksall";
          $result = mysqli_query($conn, $sql);
          echo "<select name='select-pr'>";
          while ($row = mysqli_fetch_assoc($result)) {
            echo "<option> ". $row['lessonName'] ." </option>";
          }
          echo "</select>";
          ?>
          <button onclick='getGradesByLesBt()'>Показать оценки за период</button>
        </section>
        <section style='padding: 1rem;'>
          Оценки за четверь/полугодие: <br>
          <?php
          $id = $_COOKIE['SSSUIDH'];
          $sql = "SELECT * FROM quaters WHERE student_id='$id'";
          $result = mysqli_query($conn, $sql);
          echo "<table>";
          while ($row = mysqli_fetch_assoc($result)) {
            if( !empty($row['first_quarter']) ){
              $first = $row['first_quarter'];
            }else{ $first = 'N/A'; }
            if( !empty($row['second_quarter']) ){
              $second = $row['second_quarter'];
            }else{ $second = 'N/A'; }
            if( !empty($row['third_quarter']) ){
              $third = $row['third_quarter'];
            }else{ $third = 'N/A'; }
            if( !empty($row['fourth_quarter']) ){
              $fourth = $row['fourth_quarter'];
            }else{ $fourth = 'N/A'; }
            if( !empty($row['fourth_quarter']) ){
              $a1 = $row['fhy'];
            }else{ $a1 = 'N/A'; }
            if( !empty($row['fourth_quarter']) ){
              $a2 = $row['shy'];
            }else{ $a2 = 'N/A'; }


            echo " <tr> <td> ".$row['lesson_name'].": <td>".$first."</td> <td>".$second."</td> <td>".$third."</td> <td>".$fourth."</td> <td>$a1</td> <td>$a2</td> ";
          }
          echo "</table>";
            ?>
        </section>

        <hr>
      </div>
      <div id='costil'>

    </div>

    <div id="my_dataviz"></div>



    <script src="js/index.js" charset="utf-8"></script>
    <script src="js/requests.js" charset="utf-8"></script>
    <script src="js/main.js" charset="utf-8"></script>
    <script src="js/d3.min.js" charset="utf-8"></script>
    <script src="js/graphs.js" charset="utf-8"></script>
  </body>
</html>
