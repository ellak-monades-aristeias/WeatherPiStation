function makeChart() {
    var urls = "https://weatherpistation-mbalamat.rhcloud.com/API/get.php?rpiID=".concat(document.getElementById("sel1").value);
    $.getJSON(urls, function(data) { 
        var xAxis = [];
        var yAxis = [];
        for (var i=0; i < data.data.length; i++){
            xAxis.push(data.data[i]['Date and time']);
            if (document.getElementById("sel2").value === 'Θερμοκρασία'){
                yAxis.push(data.data[i]['Temperature-DHT']);
            }
            if (document.getElementById("sel2").value === 'Υγρασία'){
                yAxis.push(data.data[i]['Relative_Humidity']);
            }
            if (document.getElementById("sel2").value === 'Πίεση'){
                yAxis.push(data.data[i]['Pressure']);
            }
        }
        var ctx = document.getElementById("myChart").getContext("2d");
        var data = {
            labels: xAxis,
            datasets: [
                {
                    label: "mychart",
                    fillColor: "rgba(220,220,220,0.2)",
                    strokeColor: "rgba(220,220,220,1)",
                    pointColor: "rgba(220,220,220,1)",
                    pointStrokeColor: "#fff",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "rgba(220,220,220,1)",
                    data: yAxis 
                }
            ]
        };
        var options = {
            scaleGridLineColor : "rgba(0,0,0,.05)",
            scaleGridLineWidth : 1,
            scaleShowHorizontalLines: true,
            scaleShowVerticalLines: true,
            bezierCurve : true,
            bezierCurveTension : 0.4,
            pointDot : true,
            pointDotRadius : 4,
            pointDotStrokeWidth : 1,
            pointHitDetectionRadius : 20,
            datasetStroke : true,
            datasetStrokeWidth : 2,
            datasetFill : true,
            legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].strokeColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>"
        };
        var myLineChart = new Chart(ctx).Line(data, options);
    });
}
