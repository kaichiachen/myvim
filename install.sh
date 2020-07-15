cd $(dirname $0)

rm ~/.vimrc
ln .vimrc ~/.vimrc

mkdir -p ~/.vim/vimrcs
rm ~/.vim/vimrcs/*
ln vimrcs/* ~/.vim/vimrcs/

rm -r ~/.vim/autoload/plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

touch ~/.tmux.conf
echo 'set-window-option -g xterm-keys on' >> ~/.tmux.conf
