@echo off
REM ���z���̃f�B���N�g�������w��
set "VENV_DIR=myenv"

REM ���z���̃f�B���N�g�������݂��邩�m�F
if not exist "%VENV_DIR%\Scripts\activate.bat" (
    echo ���z�� '%VENV_DIR%' �����݂��܂���B�V�K�쐬���܂��B
    python -m venv "%VENV_DIR%"
)

REM ���z�����A�N�e�B�u�����A�V�����R�}���h�v�����v�g���J��
call "%VENV_DIR%\Scripts\activate"
cmd /k
