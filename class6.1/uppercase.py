import sys
import glob
import re
textfiles = glob.glob("*.txt")
print(textfiles)
for t in textfiles:
    f = open(t)
    newfile = re.sub(".txt", "-upper.txt", t)
    g = open(newfile, "w")
    g.write(f.read().upper())
    f.close()
    g.close()




