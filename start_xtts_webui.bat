@echo off

SET TEMP=temp

call venv/scripts/activate

pip -V

py -V

py app.py --deepspeed --rvc

pause