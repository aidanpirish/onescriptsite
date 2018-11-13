
cd /var/www
ls

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
  </head>
  <body>
    <h1>Welcome to the OneScriptSite</h1>
    <h3>This site was created with a single bash script</h3>
    <br>
    <a href="./A/A.html">NEXT PAGE</a>
  </body>
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