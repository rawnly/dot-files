welcome() {
  echo -ne "Good Morning, \e[1;35m$NICKNAME\e[0m! It's "; date '+%A, %B %-d %Y'
  echo ""
  echo ""
  echo "LOCAL IP: $LOCALIP"
  echo -ne "PUBLIC IP: "; pub
  echo ""
  echo ""
}

website() {

  echo "Give me a second please..."

  # Website folders
  mkdir dist/
  mkdir dist/js/
  mkdir dist/css/

  sleep 1

  # Files
  touch dist/js/index.js | echo "Touching Index.js"
  touch dist/css/style.css | echo "Touching Style.css"
  touch dist/index.html | echo "Touching Index.html"

  sleep 1

  # Non Compiled Folders
  mkdir sass/
  mkdir coffee/

  sleep 1

  # Files
  touch coffee/index.coffee | echo "Touching Index.coffee"
  touch sass/style.scss | echo "Touching Style.scss"

  sleep 1

  touch Gulpfile.js | echo "Touching Gulpfile"

  sleep 1

  # Inits
  git init
  npm init


  # Node Modules
  # npm install gulp gulp-util gulp-sass gulp-coffee chalk browser-sync gulp-connect-php --save-dev > /dev/null

  PS3="Do you want download Chili Scale and MDL COLORS? "
  select option in yes no
  do
      case $option in
          yes)
              cd sass
              curl --silent -O https://raw.githubusercontent.com/Rawnly/Material-Design-Colors-SASS/master/md_var.scss > /dev/null
              cd ..
              cd dist/css
              curl --silent -O https://raw.githubusercontent.com/Rawnly/Chili.css/master/dist/chili.css > /dev/null
              cd ..
              cd js
              curl --silent -O https://raw.githubusercontent.com/Rawnly/scale.js/master/dist/js/scale.js > /dev/null
              cd ../..
              echo "Byeee!"
              atom .
              exit 0;;
          no)
              echo "Byeee!"
              atom .
              exit 0;;
       esac
  done



}

new() {
  if [ -z ${1} ]; then
    echo "Empty name!"
  else
    touch $1
  fi
}

server() {
  if [ -z ${1} ]; then
    # php -S $LOCALIP:3000
    php -S localhost:3000
  else
    # php -S $LOCALIP:$1
    php -S localhost:$1
  fi
}
