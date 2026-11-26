@echo off
setlocal
title Instalar Generador de Prompts IA
set "DEST=%LOCALAPPDATA%\GeneradorPrompts"

if not exist "%~dp0index.html" (
  echo No encuentro index.html junto a este archivo.
  echo Descomprime primero el ZIP completo y vuelve a ejecutar Instalar.bat
  pause
  exit /b 1
)

if not exist "%DEST%" mkdir "%DEST%"
copy /Y "%~dp0index.html" "%DEST%\index.html" >nul
if exist "%~dp0README.md" copy /Y "%~dp0README.md" "%DEST%\README.md" >nul
copy /Y "%~dp0Desinstalar.bat" "%DEST%\Desinstalar.bat" >nul 2>nul

powershell -NoProfile -Command "$h=Join-Path $env:LOCALAPPDATA 'GeneradorPrompts\index.html'; $u=([uri]$h).AbsoluteUri; $d=[Environment]::GetFolderPath('Desktop'); $s=(New-Object -ComObject WScript.Shell).CreateShortcut((Join-Path $d 'Generador de Prompts.lnk')); $e=@((Join-Path ${env:ProgramFiles(x86)} 'Microsoft\Edge\Application\msedge.exe'),(Join-Path $env:ProgramFiles 'Microsoft\Edge\Application\msedge.exe')) | Where-Object { Test-Path $_ } | Select-Object -First 1; if ($e) { $s.TargetPath=$e; $s.Arguments='--app='+[char]34+$u+[char]34; $s.IconLocation=$e+',0' } else { $s.TargetPath=$h }; $s.Description='Generador de Prompts IA'; $s.Save()"

if errorlevel 1 (
  echo No se pudo crear el acceso directo. Puedes abrir el programa desde:
  echo %DEST%\index.html
) else (
  echo Listo. Tienes "Generador de Prompts" en el escritorio.
)
pause
