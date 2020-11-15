<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Общение с преподавателями</title>
</head>
<body>
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
</body>
</html>