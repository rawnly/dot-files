welcome() {
  # echo -ne "Good STAUTS, \e[1;35m$NICKNAME\e[0m! It's "; date '+%A, %B %-d %Y'
  greetings

  echo ""
  echo ""
  echo "LOCAL IP: $LOCALIP"
  echo -ne "PUBLIC IP: "; pub
  echo ""
  echo ""
}

greetings() {
  h=`date +%H`
  if [ $h -lt 12 ]; then
    echo -ne "Good morning, \e[1;35m$NICKNAME\e[0m! It's "; date '+%A, %B %-d %Y'
  elif [ $h -lt 18 ]; then
    echo -ne "Good afternoon, \e[1;35m$NICKNAME\e[0m! It's "; date '+%A, %B %-d %Y'
  else
    echo -ne "Good evening, \e[1;35m$NICKNAME\e[0m! It's "; date '+%A, %B %-d %Y'
  fi
}

dayStat() {
  p=`date +%p`
  if [ $p != 'PM' ]; then
    echo "Morning"
  else
    echo "Evening"
  fi
}


website() {
  echo -ne "Good "; dayStat;

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


gkit() {
  echo "- Gulp"
  sleep 0.2

  echo "- Gulp Sass"
  sleep 0.2

  echo "- Gulp Coffee"
  sleep 0.2

  echo "- Gulp Util"
  sleep 0.2

  echo "- Gulp Connect PHP"
  sleep 0.2

  echo "- Browser Sync"
  sleep 0.2

  echo "- Chalk"
  sleep 0.2

  npm install gulp gulp-util gulp-sass gulp-coffee chalk browser-sync gulp-connect-php --save-dev
}



server() {
  if [ -z "${1}" ]
    then
      #Default Options
      a='0.0.0.0'
      p='8000'
      open "http://$a:$p" && python -m SimpleHTTPServer $p
    else
      if [ -z "${2}" ]
        then
          $p = '4000'
          open "http://${1}:$p" && python -m SimpleHTTPServer $p
        else
          open "http://${1}:${2}" && python -m SimpleHTTPServer $2
      fi
  fi
}

# Create new file
new() {
  if [ -z "${1}" ]
    then
      echo "\e[31m》ERROR: \e[34mMissing file name."
      return 1
    else
      if [ -e ${1} ]
        then
          echo "\e[34;1m》$1\e[0m \e[31;1malready exists!!\e[0m";
        else
          echo > $1;
          echo "\e[34;1m》$1\e[0m \e[32;1msuccesfully created.\e[0m"
      fi
  fi
}

# Check if a folder or a file exists
check() {
  if [ -z "${1}" ]
    then
      echo "\e[31m》ERROR: \e[34mMissing file name."
    else
      if [ -e ${1} ]
        then
          echo "\e[34;1m》$1\e[0m \e[33mFounded\e[0m"
        else
          echo "\e[31m》ERROR 404: \e[34m $1 not found."
      fi
  fi

}

# Show current folder in finder
show() {
  open . -a Finder
}

# # Edit file with Atom Editor
# atomize() {
#   if [ -z "${1}" ]
#     then
#       echo "\e[31m》ERROR: \e[34mMissing file name."
#     else
#       if [ -e ${1} ]
#         then
#           open ${1} -a Atom
#         else
#           echo "\e[31m》ERROR 404: \e[34m File not found."
#       fi
#   fi
#
#   # Use dot for current dir
#   # EXAMPLE: atomize .
# }

edit() {
  if [ -z "${1}" ]
    then
      echo "\e[31m》ERROR: \e[34mMissing file name."
    else
      if [ -z "${2}" ]
        then
          echo "\e[31m》ERROR: \e[34mNo editor specified."
        else
          if [ -e ${1} ]
            then
              open ${1} -a ${2}
            else
              echo "\e[31m》ERROR 404: \e[34m File not found."
          fi
      fi
  fi
  # Use dot for current dir
  # EXAMPLE: edit .
}

# now i actually use splash-cli node module
u-splash() {
  unsplash get -s 1920,1080 --random
}

# Add all and push
pushit() {
  if [ -z "${1}" ]; then
    echo "Usage: "
    echo -ne "pushit <commit>     "
    echo "# Push & Add all with commit"
  else
    git add *
    git commit -m "$1";
    git push -u origin master
  fi
}

gi() {
  curl -L -s https://www.gitignore.io/api/$@
}


ignore() {
  if [ -z "${1}" ]
    then
      gi node,windows,osx > .gitignore && gi node,coffeescript,sass,windows,osx > .npmignore
    else
      gi ${1} > .gitignore && gi ${1} > .npmignore
    fi
  echo "\e[32;1m》Done\e"
}
