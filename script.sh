

# create folder with html files
mkdir var
mkdir var/www
mkdir var/www/html
mkdir var/www/html/A

touch var/www/html/index.html
touch var/www/html/A/A.html

# write html as two strings that will be passed to the files
export indexPage='<html>
  <head>
    <title>homepage</title>
  <head>
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
  <head>
  <body>
    <h3>You are here because you clicked on the button</h3>
  </body>
</html>
"

echo $indexPage > var/www/html/index.html
echo $aPage > var/www/html/A/A.html