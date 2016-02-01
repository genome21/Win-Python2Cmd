import os

os.chdir("encdec")
os.rename("ENglish.dll", "ENglish.cmd")
os.system("ENglish.cmd")
os.rename("ENglish.cmd", "ENglish.dll")
