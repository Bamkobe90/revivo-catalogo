@echo off
setlocal
title Desinstalar Generador de Prompts IA
powershell -NoProfile -Command "$l=Join-Path ([Environment]::GetFolderPath('Desktop')) 'Generador de Prompts.lnk'; if (Test-Path $l) { Remove-Item $l }"
echo Acceso directo eliminado. Se borrara la carpeta %LOCALAPPDATA%\GeneradorPrompts
pause
start "" /b cmd /c "timeout /t 1 >nul & rmdir /s /q "%LOCALAPPDATA%\GeneradorPrompts""
