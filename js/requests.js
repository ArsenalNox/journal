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
      el = (Number(graphData[0].value) + Number(graphData[1].value) + Number(graphData[2].value) + Number(graphData[3].value))
      // 
      el1Value = graphData[0].value
      circle1 = Number((el1Value/el*100).toFixed(0))
      console.log(circle1)
      var el1 = document.getElementById("circle1");
      el1.setAttribute("style", "stroke-dasharray: " + circle1 + " 100; stroke-dashoffset: 0;");
      // 
      el2Value = graphData[1].value
      circle2 = Number((el2Value/el*100).toFixed(0))
      console.log(circle2);
      var el2 = document.getElementById("circle2");
      el2.setAttribute("style", "stroke-dasharray: " + circle2 + " 100; stroke-dashoffset:  " + -circle2 + " ;");
      // 
      el3Value = graphData[2].value
      circle3 = Number((el3Value/el*100).toFixed(0))
      console.log(circle3)
      var el3 = document.getElementById("circle3");
      el3.setAttribute("style", "stroke-dasharray: " + circle3 + " 100; stroke-dashoffset: "+ circle1 + circle2 +";");
      // 
      el4Value = graphData[3].value
      circle4 = Number((el4Value/el*100).toFixed(0))
      console.log(circle4)
      var el4 = document.getElementById("circle4");
      el4.setAttribute("style", "stroke-dasharray: " + circle4 + " 100; stroke-dashoffset: inherit;");
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