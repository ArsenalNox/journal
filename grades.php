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
                <li> <a href="student.php"> Главная страница </a> </li>
                <li> <a href="#"> Общение с преподавателями </a> </li>
                <li> <a href="php/functions/logout.php">Выйти из аккаунта</a>  </li>
                <?php echo '<li> Вы вошли как: '.$_COOKIE['SSSIDH'].'</li>'; ?>
              </ul>
          </div>
          </nav>
        </div>
      </div>
    </nav>
    <section class="marks-wrap">
    <div class="canvas">
      <!-- <div class="legend">
        <p class="title">Что мешает веремония закрытия Хакатона 2.0. Подведение итогов и объявление победителей по двум трекамо время работы дома?</p>
        <ul class="caption-list">
          <li class="caption-item">еда</li>
          <li class="caption-item">соседи</li>
          <li class="caption-item">отсутствие рабочего места</li>
          <li class="caption-item">мало двигаюсь</li>
          <li class="caption-item">отсутствие чёткого графика работы</li>
          <li class="caption-item">неудобная коммуникация с коллегами</li>
          <li class="caption-item">много ленюсь</li>
        </ul>
      </div> -->

      <svg class="chart" width="300" height="300" viewBox="0 0 50 50">
        <circle id="circle1" class="unit" r="15.9" cx="50%" cy="50%"></circle>
        <circle id="circle2" class="unit" r="15.9" cx="50%" cy="50%"></circle>
        <circle id="circle3" class="unit" r="15.9" cx="50%" cy="50%"></circle>
        <circle id="circle4" class="unit" r="15.9" cx="50%" cy="50%"></circle>
      </svg>
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



    <script src="js/index.js" charset="utf-8"></script>
    <script src="js/requests.js" charset="utf-8"></script>
    <script src="js/main.js" charset="utf-8"></script>

    <script src="js/d3.min.js" charset="utf-8"></script>
    <script src="js/graphs.js" charset="utf-8"></script>
  </body>
</html>
