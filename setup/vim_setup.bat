@echo off
rem KaoriYa��Windows�pVim�V���{���b�N�����N�쐬�o�b�`�t�@�C��

rem �Ǘ��Ҍ����`�F�b�N�E���i
openfiles > nul
if errorlevel 1 (
	PowerShell.exe -Command Start-Process \"%~f0\" -Verb runas
	exit
)

rem �ݒ�p�p�X�̎擾
pushd %~dp0..
set DOTPATH=%CD%
popd

rem �V���{���b�N�����N�쐬
cd %HOMEPATH%
mklink /D .vim "%DOTPATH%\vimfiles"
mklink _vimrc "%DOTPATH%\vimfiles\vimrc"
mklink /D vimfiles .vim