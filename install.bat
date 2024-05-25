@echo off

py -3.10 -m venv venv
call venv/scripts/activate

py -m pip install --upgrade pip

pip install -r .\requirements.txt
pip install torch==2.1.1+cu118 torchaudio==2.1.1+cu118 --index-url https://download.pytorch.org/whl/cu118

@Echo Install deepspeed for windows for python 3.10.x and CUDA 11.8
python scripts/modeldownloader.py

pip -V

py -V

call venv/scripts/deactivate

echo Install complete... Successfully... Maybe... I am not shure... But I belive... Good luck, any way.
pause