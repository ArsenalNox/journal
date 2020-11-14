<?php
include_once 'php/dtb/dtb.php';
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
    <link rel="stylesheet" href="css/right-nav-style.css">
    <link rel="apple-touch-icon" sizes="192x192" href="img/192.png">
    <link rel="apple-touch-icon" sizes="48x48" href="img/48.png">
    <link rel="apple-touch-icon" sizes="57x57" href="img/57.png">
    <!-- <link rel="apple-touch-icon" sizes="114x114" href="img/114.png"> -->
    <link rel="apple-touch-icon" sizes="512x512" href="img/512.png">
    <link rel="apple-touch-icon" sizes="1024x1024" href="img/1024.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/114.png" />
    <title>Электронный журнал ученика</title>
  </head>
  <style media="screen">
    .day-table{
        display: grid;
        border: 1px solid black;
        margin-bottom: 1rem;
    }
  </style>
  <body onload='GetGroupNames()'>
    <footer>
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
                <li> <a href="#"> Смотреть свои оценки </a> </li>
                <li> <a href="#"> Общение с преподавателями </a> </li>
                <li> <a href="php/functions/logout.php">Выйти из аккаунта</a>  </li>
                <?php echo '<li> Вы вошли как: '.$_COOKIE['SSSIDH'].'</li>'; ?>
              </ul>
          </div>
          </nav>
        </div>
      </div>
    </footer>
    <section class="main">
      <div class="curriculum-container" id='ct1'> </div>

    </section>
  </body>
  <script src="js/main.js" charset="utf-8"></script>
  <script src="js/requests.js" charset="utf-8"></script>
</html>