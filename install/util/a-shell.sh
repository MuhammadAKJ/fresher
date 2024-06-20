[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/fresher/configs/bashrc ~/.bashrc
source ~/.local/share/fresher/defaults/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
cp ~/.local/share/fresher/configs/inputrc ~/.inputrc
