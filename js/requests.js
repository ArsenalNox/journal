
function GetGroupNames() {
  //Получает все имена класса
  var n1 = '1'
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById('ct1').innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "php/functions/show_schedule.php", true);
  xhttp.send();
}
