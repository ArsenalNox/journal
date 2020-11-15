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
  <body onload='getGraphData("all")'>
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
                <li><a href="student.php">Главная</a></li>
                <li> <a href="grades.php"> Смотреть свои оценки </a> </li>
                <li> <a href="#"> Смотреть </a> </li>
                <li> <a href="communication.php"> Общение с преподавателями </a> </li>
                <li> <a href="#"> Объявления школы </a> </li>
                <li> <a href="php/functions/logout.php">Выйти из аккаунта</a>  </li>
                <br>
                <li> <span id='current-lesson'> </span> </li>
                <?php echo '<li class="entrance"> Вы вошли как: '.$_COOKIE['SSSIDH'].'</li>'; ?>
              </ul>
          </div>
          </nav>
        </div>
      </div>
    </nav>
    <section class="marks-wrap">
      <div>
        <svg class="chart" width="300" height="300" viewBox="0 0 40 40">
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
      </div>
    </section>
    <hr>
      <div class="input-search-form" id='dform'>
        <label for="first-date">Показ оценок с</label>
        <input type="date" name="first-date" id='fd1'> по <input type="date" name="second-date" id='sd1'>
        <button onclick='getGradesBt()'>Показать оценки за период</button>
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
