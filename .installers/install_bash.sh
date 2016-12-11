echo "Hello $USER!"
echo "Give me a second please..."

mkdir ~/.shells/
cp -rf ../dist/.* ~/.shells/

# BASH
cat dist/rcfile.sh >> ~/.bashrc

echo "Done! Please visit https://www.github.com/Rawnly for more infos."
