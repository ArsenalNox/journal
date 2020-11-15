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


function GetGroupNamesParent() {
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
  xhttp.open("GET", "php/functions/show_schedule_parent.php", true);
  xhttp.send();
}

function getGraphData(selection){
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      let occipuiedpercent = 0;
      graphData = JSON.parse(this.responseText);
      el = (Number(graphData[0].value) + Number(graphData[1].value) + Number(graphData[2].value) + Number(graphData[3].value))
      el1Value = graphData[0].value
      circle1 = Number((el1Value/el*100).toFixed(0))
      var el1 = document.getElementById("circle1");
      el1.setAttribute("style", "stroke-dasharray: " +  circle1 + " 100; stroke-dashoffset: 0;");
      occipuiedpercent+=circle1
      //

      el2Value = graphData[1].value
      circle2 = Number((el2Value/el*100).toFixed(0))
      var el2 = document.getElementById("circle2");
      el2.setAttribute("style", "stroke-dasharray: " + circle2 + " 100; stroke-dashoffset:  " + -(circle1) + " ;");
      occipuiedpercent+=circle2;
      //

      el3Value = graphData[2].value
      circle3 = Number((el3Value/el*100).toFixed(0))
      var el3 = document.getElementById("circle3");
      el3.setAttribute("style", "stroke-dasharray: " + circle3 + " 100; stroke-dashoffset: " + -(circle1 + circle2) +";");
      occipuiedpercent+=circle3;

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
      let marquee = document.createElement('p');
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

function getGradesBt(){
  var date1 = document.getElementById('fd1').value;
  var date2 = document.getElementById('sd1').value;
  console.log(date1, date2);
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
        document.getElementById('costil').innerHTML = this.responseText;
    }
  };
  xhttp.open("POST", "php/functions/get_grades_table.php", true);
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.send("date1="+date1+"&date2="+date2);
}
