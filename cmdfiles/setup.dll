@echo off
GOTO compatibility3532

:errors
ECHO PYTHON VERSION NOT COMPATIBLE.
GOTO EOF

:compatibility3532
SET FINDVERSION=%USERPROFILE%\AppData\Local\Programs\Python\Python35-32\python.exe --version
%FINDVERSION% > version.txt
FIND "Python 3.5" version.txt>NUL
IF ERRORLEVEL == 1 (
	GOTO compatibility2732
) ELSE (
	GOTO RUNCODE3532
)

:compatibility2732
SET FINDVERSION=%USERPROFILE%\AppData\Local\Programs\Python\Python27-32\python.exe --version
%FINDVERSION% > version.txt
FIND "Python 2.7" version.txt>NUL
IF ERRORLEVEL == 1 (
	GOTO errors
) ELSE (
	GOTO RUNCODE2732
)

:COMPATIBILITY3564
SET FINDVERSION=%USERPROFILE%\AppData\Local\Programs\Python\Python35\python.exe --version
%FINDVERSION% > version.txt
FIND "Python 3.5" version.txt>NUL
IF ERRORLEVEL == 1 (
	GOTO compatibility2764
) ELSE (
	GOTO RUNCODE3564
)

:COMPATIBILITY2764
SET FINDVERSION=%USERPROFILE%\AppData\Local\Programs\Python\Python27\python.exe --version
%FINDVERSION% > version.txt
FIND "Python 3.5" version.txt>NUL
IF ERRORLEVEL == 1 (
	GOTO errors
) ELSE (
	GOTO RUNCODE2764
)

:RUNCODE3532
REN python3532.genome21 python.cmd
COPY python.cmd C:\Windows>NUL
REN python.cmd python3532.genome21
GOTO EOF

:RUNCODE2732
REN python2732.genome21 python.cmd
COPY python.cmd C:\Windows>NUL
REN python.cmd python2732.genome21
GOTO EOF

:RUNCODE3564
REN python3564.genome21 python.cmd
COPY python.cmd C:\Windows>NUL
REN python.cmd python3564.genome21
GOTO EOF

:RUNCODE2764
REN python2764.genome21 python.cmd
COPY python.cmd C:\Windows>NUL
REN python.cmd python2764.genome21
GOTO EOF

:EOF
DEL /Q version.txt