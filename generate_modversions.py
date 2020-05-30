from sys import argv
from os import walk, curdir

f = []
for (dirpath, dirnames, filenames) in walk(curdir + '/mods'):
    f.extend(filenames)
    break

numberOfMods = len(f)
fileContents = '# Pre-commit hook found ' + \
    str(numberOfMods) + ' mods, with the following versions:\n\n'

for index, fileName in enumerate(f):
    is_last = numberOfMods == index + 1
    fileContents += fileName if is_last else fileName + '\n'
    pass

file = open(argv[1], 'w')
file.write(fileContents)
