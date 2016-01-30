@echo off
%USERPROFILE%\AppData\Local\Programs\Python\Python35-32\python.exe --version > version.txt
SET /a ERL=%ERRORLEVEL%
GOTO compatibility3

:errors
ECHO Python version not compatible.
GOTO EOF

:compatibility3
FIND "Python 3.5" version.txt
GOTO ELO1

:compatibility2
FIND "Python 2.7" version.txt
GOTO ELO2

:ELO1
IF ERRORLEVEL == 1 (
	GOTO compatibility2
) ELSE (
	GOTO runcode35
)

:ELO2
IF ERRORLEVEL == 1 (
	GOTO errors
) ELSE (
	GOTO runcode27
)

:runcode35
REN python35.genome21 python.cmd
COPY python.cmd C:\Windows
REN python.cmd python35.genome21
GOTO EOF

:runcode27
REN python27.genome21 python.cmd
COPY python.cmd C:\Windows
REN python.cmd python27.genome21
GOTO EOF

:EOF
