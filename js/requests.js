var graphData = [];

function GetGroupNames() {
  //Получает все имена класса
  var n1 = '1'
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById('ct1').innerHTML = this.responseText;
      showLowPerformace();
      showCurrentLesson();
    }
  };
  xhttp.open("GET", "php/functions/show_schedule.php", true);
  xhttp.send();
}

function getGraphData(selection){
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      let occipuiedpercent = 0;
      graphData = JSON.parse(this.responseText);
      console.log(graphData);
      el = (Number(graphData[0].value) + Number(graphData[1].value) + Number(graphData[2].value) + Number(graphData[3].value))
      console.log(el+' 12');
      el1Value = graphData[0].value
      circle1 = Number((el1Value/el*100).toFixed(0))
      var el1 = document.getElementById("circle1");
      el1.setAttribute("style", "stroke-dasharray: " +  circle1 + " 100; stroke-dashoffset: 0;");
      occipuiedpercent+=circle1
      //

      console.log(occipuiedpercent);
      console.log((360/100)*occipuiedpercent);
      el2Value = graphData[1].value
      circle2 = Number((el2Value/el*100).toFixed(0))
      var el2 = document.getElementById("circle2");
      el2.setAttribute("style", "stroke-dasharray: " + circle2 + " 100; stroke-dashoffset:  " + -(circle1) + " ;");
      occipuiedpercent+=circle2;
      console.log(occipuiedpercent);
      console.log((360/100)*occipuiedpercent);
      //

      el3Value = graphData[2].value
      circle3 = Number((el3Value/el*100).toFixed(0))
      var el3 = document.getElementById("circle3");
      el3.setAttribute("style", "stroke-dasharray: " + circle3 + " 100; stroke-dashoffset: " + -(circle1 + circle2) +";");
      occipuiedpercent+=circle3;
      console.log(occipuiedpercent);
      console.log((360/100)*occipuiedpercent);

      //
      el4Value = graphData[3].value
      circle4 = Number((el4Value/el*100).toFixed(0))
      var el4 = document.getElementById("circle4");
      el4.setAttribute("style", "stroke-dasharray: " + circle4 + " 100; stroke-dashoffset: "+ -(circle1 + circle2 + circle3) +";");
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
//код для графика

var el1 = document.getElementById("circle1");
el1.setAttribute("style", "stroke-dasharray: 8 100; stroke-dashoffset: -75;");
var el2 = document.getElementById("circle2");
el2.setAttribute("style", "stroke-dasharray: 11 100; stroke-dashoffset: -83;");
var el3 = document.getElementById("circle3");
el3.setAttribute("style", "stroke-dasharray: 11 100; stroke-dashoffset: -94;");
var el4 = document.getElementById("circle4");
el4.setAttribute("style", "stroke-dasharray: 14 100; stroke-dashoffset: 0;");
console.log(el1.style.strokeDasharray)
