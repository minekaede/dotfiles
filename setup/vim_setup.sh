#!/bin/sh

# �����ѥѥ��μ���
DOT_DIR=$(cd $(dirname $0); cd ..; pwd)

# ����ܥ�å���󥯺���
if [[ -e ~/.vim ]]; then
	unlink ~/.vim
fi
ln -sf $DOT_DIR/vimfiles ~/.vim
ln -sf $DOT_DIR/vimfiles/vimrc ~/.vimrc
