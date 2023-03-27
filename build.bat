@echo off
cd /D %~dp0
set PATH="%ANT_HOME%\bin";%PATH%

if not defined JAVA_HOME (set JAVA_HOME=C:\Program Files\Java\jdk-10.0.2)

echo Downloading dependencies...
call ant resolve

echo:

echo Compiling...
call ant fatjar

echo:

::echo Building MSI installer...
::call ant msi

if not defined WORKSPACE pause
