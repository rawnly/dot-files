echo "Hello $USER!"
echo "Give me a second please..."

mv ../dist/aliases.sh .aliases
mv ../dist/profile.sh .profile

mkdir ~/.shells/

cp dist/.* ~/.shells/

# BASH
cat dist/rcfile.sh >> ~/.bashrc

echo "Done! Please visit https://www.github.com/Rawnly for more infos."
