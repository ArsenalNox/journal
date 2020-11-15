<?php
session_start();
include_once "php/dtb/dtb.php";
if($_SERVER['REQUEST_METHOD'] === "POST"){
  if(isset($_POST['submit'])){
    $_SESSION['LOGIN_STATUS'] = 'proceeding';
    // TODO: Кеширование паролей как в бд, так и в запросе
    // TODO: При успешной проверке пароля генерировать токен
    $uid = $_POST['uid'];
    $pwd = $_POST['pwd'];
    $sql = "SELECT * FROM users WHERE uid='$uid' AND pwd ='$pwd';";
    $result = mysqli_query($conn, $sql);
    if($result){
      if(mysqli_num_rows($result)>0){
          $row = mysqli_fetch_assoc($result);
          $hased = $uid;
          //Получить айди ученика в таблице участников
          setcookie('SSSIDH', $hased, time()+60*60*24*30, '/');
          setcookie('SSSCLS', $row['classId'], time()+60*60*24*30, '/');
          setcookie('SSSUIDH', '1', time()+60*60*24*30, '/');
          switch ($row['who']) {
            case 'student':
              //Желательно передавать GET'ом токен, подтверждающий авторизацию, но пока что так
              header("Location: student.php?taas=true");
              $_SESSION['LOGIN_STATUS'] = 'auth';
              die();
              break;
            case 'parent':
              setcookie('WHO', '1', time()+60*60*24*30, '/');
              header("Location: parent.php?taas=true");
              $_SESSION['LOGIN_STATUS'] = 'auth';
              die();
              break;
          }
          exit;
        } else {
          $_SESSION['LOGIN_STATUS'] = 'failed';
          header("Location: index.php?error=error".$uid."/".$pwd);
          die();
        }
      } else {
        echo "$sql Произошла ошибка";
      }
    } else {


    }
} else {
  echo "1";
}
?>
