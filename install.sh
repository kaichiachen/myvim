cd $(dirname $0)

rm ~/.vimrc
ln .vimrc ~/.vimrc

mkdir -p ~/.vim/vimrcs
rm ~/.vim/vimrcs/*
ln vimrcs/* ~/.vim/vimrcs/

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

source ~/.vimrc
