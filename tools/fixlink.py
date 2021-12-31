"""
fixlink.py
By: Monstarules

Fixes the link file when you remove ROMX banks from it.
Currently is only for ROMX stuff.
"""

import os

file1 = open("../pokecrystal.link", "r")
file2 = open("../pokecrystal.link.new", "w")

lines = file1.readlines()
hexIterator = 1

for line in lines:
    currLine = line
    if (line.find("ROMX ") != -1):
        if (hexIterator < 16):
            line = "ROMX $0" + str(hex(hexIterator)).replace("0x", "") + "\n"
        else:
            line = "ROMX $" + str(hex(hexIterator)).replace("0x", "") + "\n"
        hexIterator += 1
    file2.writelines(line)

file1.close()
file2.close()

os.remove("../pokecrystal.link") 
os.rename("../pokecrystal.link.new", "../pokecrystal.link")
