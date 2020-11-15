var graphData = [];

function GetGroupNames() {
  //Получает все имена класса
  var n1 = '1'
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById('ct1').innerHTML = this.responseText;
      showLowPerformace()
    }
  };
  xhttp.open("GET", "php/functions/show_schedule.php", true);
  xhttp.send();
}

function getGraphData(selection){
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      console.log(this.responseText);
      graphData = JSON.parse(this.responseText);
    }
  };
  xhttp.open("GET", "php/functions/get_graph_information.php", true);
  xhttp.send();
}

function showLowPerformace(){
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      let marquee = document.createElement('marquee');
      marquee.innerHTML = this.responseText;
      document.getElementById('nav1').append(marquee);
    }
  };
  xhttp.open("GET", "php/functions/generate_student_bad_performance.php", true);
  xhttp.send();
}
