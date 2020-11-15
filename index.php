<!DOCTYPE html>
<html lang="ru" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="theme-color" content="#FFFFFF"/>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="theme-color" content="#FFFFFF"/>
  <meta
    name="description"
    content="Прогрессивное веб приложение электронного журнала оренбургской области">
  <link rel="manifest" href="manifest.webmanifest">
  <link rel="stylesheet" href="css/main.css">
  <link rel="apple-touch-icon" sizes="192x192" href="img/192.png">
  <link rel="apple-touch-icon" sizes="48x48" href="img/48.png">
  <link rel="apple-touch-icon" sizes="57x57" href="img/57.png">
  <link rel="apple-touch-icon" sizes="512x512" href="img/512.png">
  <link rel="apple-touch-icon" sizes="1024x1024" href="img/1024.png">
  <link rel="shortcut icon" href="img/48.png" />
  <!-- <link rel="apple-touch-icon" sizes="114x114" href="img/114.png"> -->
  <title>Вход в ЭлЖур</title>
</head>

<body>
  <section class='main'>
    <form class="login-form" action="login.php" method="post">
      <h1 class="entryh1">Вход</h1>
      <input type="text" name="uid" placeholder="Логин">
      <input type="password" name="pwd" placeholder="Пароль">
      <br>
      <button class="entry" type="submit" name="submit" value="Войти"><span class="entryText">Войти</span></button>
    </form>

  </section>
  <script src="js/main.js" charset="utf-8"></script>
</body>

</html>
