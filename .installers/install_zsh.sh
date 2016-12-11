echo "Hello $USER!"
echo "Give me a second please..."

mkdir ~/.shells/
cp -rf ../dist/.* ~/.shells/

# ZSH
cat ../dist/rcfile.sh >> ~/.zshrc

echo "Done! Please visit https://www.github.com/Rawnly for more infos."
