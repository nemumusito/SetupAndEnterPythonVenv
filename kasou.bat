@echo off
REM 仮想環境のディレクトリ名を指定
set "VENV_DIR=myenv"

REM 仮想環境のディレクトリが存在するか確認
if not exist "%VENV_DIR%\Scripts\activate.bat" (
    echo 仮想環境 '%VENV_DIR%' が存在しません。新規作成します。
    python -m venv "%VENV_DIR%"
)

REM 仮想環境をアクティブ化し、新しいコマンドプロンプトを開く
call "%VENV_DIR%\Scripts\activate"
cmd /k
