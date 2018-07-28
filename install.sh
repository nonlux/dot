#!/bin/sh
sudo pacman -Sy git
sudo pacman -Sy docker
git clone  -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d
mkdir ~/src
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
yaourt -Sy dropbox nautilus-dropbox
sudo pacman -Sy keepass
read -n1 -r -p "Generate sshkey and add github" key
git clone git@github.com:nonlux/dot src/dot
rm ~/.zshrc
ln ~/src/dot/zsh/.zshrc ~/.zshrc
cp ~/src/dot/fonts ~/.fonts -r
ln ~/src/dot/git/.gitconfig ~/.gitconfig
sudo pacman -Sy tmux
ln ~/src/dot/tmux/.tmux.conf ~/.tmux.conf
rm ~/.spacemacs
ln ~/src/dot/spacemacs/.spacemacs ~/.spacemacs
