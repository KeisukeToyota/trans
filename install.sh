sudo cp -r trans ~/.trans

pip3 install -r requirements.txt

case `dscl localhost -read Local/Default/Users/$USER UserShell | cut -d' ' -f2 | grep 'zsh'` in
*bash*)
echo export PATH='$HOME/.trans/:$PATH' >> ~/.bash_profile;;
*zsh*)
echo export PATH='$HOME/.trans/:$PATH' >> ~/.zshrc;;
*)
echo 'unknown login shell...';;
esac
