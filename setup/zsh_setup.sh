#!/bin/sh

# �����ѥѥ��μ���
DOT_DIR=$(cd $(dirname $0); cd ..; pwd)

# ����ܥ�å���󥯺���
if [[ -e ~/.zsh ]]; then
	unlink ~/.zsh
fi
ln -sf $DOT_DIR/zshfiles ~/.zsh
ln -sf $DOT_DIR/zshfiles/zshrc ~/.zshrc
ln -sf $DOT_DIR/zshfiles/zshenv ~/.zshenv
