@echo off
rem KaoriYa��Windows�pVim�V���{���b�N�����N�쐬�o�b�`�t�@�C��

rem �Ǘ��Ҍ����`�F�b�N�E���i
openfiles > nul
if errorlevel 1 (
    PowerShell.exe -Command Start-Process \"%~f0\" -Verb runas
    exit
)

set /P DOTPATH="dotfiles�f�B���N�g���̃t���p�X: "

cd %HOMEPATH%
mklink /D .vim "%DOTPATH%\vimfiles"
mklink _vimrc "%DOTPATH%\.vimrc"
mklink /D vimfiles .vim
