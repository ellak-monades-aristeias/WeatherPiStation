function makeChart() {
    var urls = "https://weatherpistation-mbalamat.rhcloud.com/API/get.php?rpiID=".concat(document.getElementById("sel1").value);
    $.getJSON(urls, function(data) { 
        /*for(var propertyName in data) {
            console.log(propertyName); 
        }*/
        console.log(data.data[0].Pressure);
    });

}
