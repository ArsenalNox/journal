<?php
include_once "php/dtb/dtb.php";
if(isset($_COOKIE['SSSIDH'])){
  $sql = 'SELECT `group` FROM users WHERE uid="'.$_COOKIE['SSSIDH'].'";';
  $check = mysqli_query($conn,$sql);
  if($check){
    if(mysqli_num_rows($check)>0){
      $row = mysqli_fetch_assoc($check);
      switch ($row['group']) {
        case '0':
          header('Location: student.php?gr=0');
          break;
        case '1':
          header('Location: student.php?gr=1');
          break;
        case '2':
          header('Location: student.php?gr=2');
          break;
        }
    }
  }
}
if($_SERVER['REQUEST_METHOD'] == "POST"){
  if(isset($_POST['submit'])){
    $uid = $_POST['uid'];
    $pwd = $_POST['pwd'];
    $sql = "SELECT `group` FROM users WHERE uid='$uid' AND pwd ='$pwd';";
    $result = mysqli_query($conn, $sql);
    if($result){
      if(mysqli_num_rows($result)>0){
          $hased = $uid;
          setcookie('SSSIDH', $hased, time()+60*60*24*30, '/');
          header("Location: student.php");
          exit;
        }
      } else {
        echo "$sql Произошла ошибка";
      }
    }
}
?>

<!DOCTYPE html>
<html lang="ru" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="theme-color" content="#FFFFFF"/>
  <link rel="manifest" href="manifest.webmanifest">
  <meta name="theme-color" content="#FFFFFF"/>
  <link rel="stylesheet" href="css/main.css">
  <link rel="apple-touch-icon" sizes="192x192" href="img/192.png">
  <link rel="apple-touch-icon" sizes="48x48" href="img/48.png">
  <link rel="apple-touch-icon" sizes="57x57" href="img/57.png">
  <!-- <link rel="apple-touch-icon" sizes="114x114" href="img/114.png"> -->
  <link rel="apple-touch-icon" sizes="512x512" href="img/512.png">
  <link rel="apple-touch-icon" sizes="1024x1024" href="img/1024.png">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="img/48.png" />
  <title>Вход в ЭлЖур</title>
</head>

<body>
  <section class='main'>
    <form class="login-form" action="index.php" method="post">
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
