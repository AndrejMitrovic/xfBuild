@echo off
setlocal EnableDelayedExpansion
set "files="
for %%i in (*.d;*.di) do set files=!files! %%i
dmd -lib -of..\win32_ansi.lib -I..\ -version=WIN32_WINNT_ONLY -version=WindowsNTonly -version=Windows2000 -version=Windows2003 -version=WindowsXP -version=WindowsVista %files% 
