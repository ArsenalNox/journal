<!DOCTYPE html>
<html lang="ru">
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
                <li> <a href="student.php">Главная</a></li>
                <li> <a href="grades.php"> Смотреть свои оценки </a> </li>
                <li> <a href="communication.php"> Общение с преподавателями </a> </li>
                <li> <a href="php/functions/logout.php">Выйти из аккаунта</a>  </li>
                <br>
                <li> <span id='current-lesson'> </span> </li>
                <table class="callschedule">
                  <tr>
                    <th>Расписание звонокв</th>
                  <tr>
                    <td>8:30:00</td>
                    <td>9:15:00</td>
                  </tr>
                  <tr>
                    <td>9:20:00</td>
                    <td>10:05:00</td>
                  </tr>
                  <tr>
                    <td>10:15:00</td>
                    <td>10:50:00</td>
                  </tr>
                  <tr>
                    <td>11:10:00</td>
                    <td>11:55:00</td>
                  </tr>
                  <tr>
                    <td>12:10:00</td>
                    <td>12:55:00</td>
                  </tr>
                    <td>13:00:00</td>
                    <td>13:45:00</td>
                  </tr>
                </table>
                <?php echo '<li class="entrance"> Вы вошли как: '.$_COOKIE['SSSIDH'].'</li>'; ?>
              </ul>
          </div>
          </nav>
        </div>
      </div>
    </nav>
    <section>
      <div class="message">
        <div class="footermas">
         <img class="search" src="img/search.png">
         <h1 class="searchtext">Чат</h1>
        </div>
        <hr>
        <div class="chat">
          <div class="circle"></div>
          <p class="name">Анна Костенская</p>
            <div class="name2">
              <div class="circle2"></div>
              <p class="name3">Анна Костенская</p>
            </div>
        </div>
        <hr>
        <div class="chat">
          <div class="circle"></div>
          <p class="name">Анна Костенская</p>
            <div class="name2">
              <div class="circle2"></div>
              <p class="name3">Анна Костенская</p>
            </div>
        </div>
        <hr>
        <div class="chat">
          <div class="circle"></div>
          <p class="name">Анна Костенская</p>
            <div class="name2">
              <div class="circle2"></div>
              <p class="name3">Анна Костенская</p>
            </div>
        </div>
        <hr>
        <div class="chat">
          <div class="circle"></div>
          <p class="name">Анна Костенская</p>
            <div class="name2">
              <div class="circle2"></div>
              <p class="name3">Анна Костенская</p>
            </div>
        </div>
        <hr>
        <div class="chat">
          <div class="circle"></div>
          <p class="name">Анна Костенская</p>
            <div class="name2">
              <div class="circle2"></div>
              <p class="name3">Анна Костенская</p>
            </div>
        </div>
        <hr>
        <div class="chat">
          <div class="circle"></div>
          <p class="name">Анна Костенская</p>
            <div class="name2">
              <div class="circle2"></div>
              <p class="name3">Анна Костенская</p>
            </div>
        </div>
        <hr>
        <div class="chat">
          <div class="circle"></div>
          <p class="name">Анна Костенская</p>
            <div class="name2">
              <div class="circle2"></div>
              <p class="name3">Анна Костенская</p>
            </div>
        </div>
        <hr>
        <div class="chat">
          <div class="circle"></div>
          <p class="name">Анна Костенская</p>
            <div class="name2">
              <div class="circle2"></div>
              <p class="name3">Анна Костенская</p>
            </div>
        </div>
        <hr>
      </div>
    </section>
</body>
</html>
