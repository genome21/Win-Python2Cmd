@echo off
REM python --version > version.txt
SET /a ERL=%ERRORLEVEL%
GOTO compatibility

:errors
ECHO Python version not compatible.
GOTO EOF

:compatibility
FIND "Python 3.5" version.txt
IF ERRORLEVEL == 1 (
	GOTO errors
) ELSE (
	GOTO runcode
)

:runcode
REN python.genome21 python.cmd
COPY python.cmd C:\Windows
REN python.cmd python.genome21

:EOF
