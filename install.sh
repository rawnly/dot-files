echo "Hello $USER!"
echo "Give me a second please..."
mv dist/aliases.sh .aliases
mv dist/profile.sh .profile

mkdir ~/.shells/
# mkdir ~/Desktop/shells

cp dist/.* ~/.shells/
# cp dist/.* ~/Desktop/shells/


cat dist/rcfile.sh >> ~/.bashrc && cat dist/rcfile.sh >> ~/.zshrc
# cat dist/rcfile.sh >> ~/Desktop/bashrc.sh && cat dist/rcfile.sh >> ~/Desktop/zshrc.sh


echo "Remove Repo Files?"
read answer

PS3="Do you want delete this folder?"
select option in yes no
do
    case $option in
        yes)
            cd ..
            rm -rf OSX_SETUPS
            break;;
        no)
            break;;
     esac
done

echo "Done! Please visit https://www.github.com/Rawnly for more infos."
