#!/bin/sh

# �����ѥѥ��μ���
SCRIPT_DIR=$(cd $(dirname $0); cd ..; pwd)

# ����ܥ�å���󥯺���
ln -sf $SCRIPT_DIR/vimfiles ~/.vim
ln -sf $SCRIPT_DIR/vimfiles/vimrc ~/.vimrc
