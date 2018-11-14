
cd /var/www

# create folders
mkdir html
mkdir html/A

# create html files
touch html/index.html
touch html/A/A.html

# write html as strings that will be written to the files
export indexPage='<html>
  <head>
    <title>homepage</title>
    <link href="https://fonts.googleapis.com/css?family=Ewert" rel="stylesheet">
    <style>
      body{ font-family: 'Ewert', cursive;}
    </style>

  </head>
  <body>
    <h1>Welcome to the OneScriptSite</h1>
    <h3>This site was created with a single bash script</h3>
    <br>
    <a href="./A/A.html">NEXT PAGE</a>
    <br><br>
    <button onclick="getLocation()">Where am I?</button>
    <p id="demo"></p>
    <meter value="2" min="0" max="10" id="meter"></meter><br>
    <button onclick="addToMeter()">CLICK HERE TO ADD TO METER</button>
  </body>
  <script>
    var x = document.getElementById("demo");
    var meter = document.getElementById("meter");

    function addToMeter() {
      meter.value += 1;
    }

    function getLocation() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showPosition);
        } else { 
            x.innerHTML = "Geolocation is not supported by this browser.";
        }
    }

    function showPosition(position) {
        x.innerHTML = "Latitude: " + position.coords.latitude + 
        "<br>Longitude: " + position.coords.longitude;
    }
  </script>
</html>
'
export aPage="<html>
  <head>
    <title>link page</title>
  </head>
  <body>
    <h3>You are here because you clicked on the button</h3>
    <br>
    <a href="../index.html">GO BACK</a>
  </body>
</html>
"

#write to html files
echo $indexPage > html/index.html
echo $aPage > html/A/A.html

# log when script is run
echo "script run on: " `date '+%m/%d/%Y_%H:%M:%S'` >> log.txt

# # open in browser
# open html/index.html