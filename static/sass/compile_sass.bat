@echo off
Set src_dir=%~dp0
Set output_dir=%src_dir%..\..\src

cd %src_dir%
echo %cd%
:: sass main.sass:%output_dir%\my-bulma.css --no-source-map --style compressed
sass main.scss:%output_dir%\my-bulma.css --no-source-map
start %output_dir%
echo all done & pause > nul
