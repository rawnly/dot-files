echo "Hello $USER!"
echo "Give me a second please..."

mkdir ~/.shells/
cd ~/.shells/

curl -O --silent https://raw.githubusercontent.com/Rawnly/dot-files/master/dist/aliases.sh
curl -O --silent https://raw.githubusercontent.com/Rawnly/dot-files/master/dist/profile.sh

mv aliases.sh .aliases.sh
mv profile.sh .profile.sh

# BASH
cat dist/rcfile.sh >> ~/.bashrc

echo "Done! Please visit \e[34mhttps://www.github.com/Rawnly for more infos.\e[0m"
