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

function showCurrentLesson() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById('current-lesson').innerText = this.responseText;

      }
    };
    xhttp.open("GET", "php/functions/get_current_lesson.php", true);
    xhttp.send();
}



//
// var el1 = document.getElementById("circle1");
// el1.setAttribute("style", "stroke-dasharray: 8 100; stroke-dashoffset: -75;");
// var el2 = document.getElementById("circle2");
// el2.setAttribute("style", "stroke-dasharray: 11 100; stroke-dashoffset: -83;");
// var el3 = document.getElementById("circle3");
// el3.setAttribute("style", "stroke-dasharray: 11 100; stroke-dashoffset: -94;");
// var el4 = document.getElementById("circle4");
// el4.setAttribute("style", "stroke-dasharray: 14 100; stroke-dashoffset: 0;");
// console.log(el1.style.strokeDasharray)
