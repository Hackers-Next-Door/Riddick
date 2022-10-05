import std/strutils

echo "|====== Riddick ======|"

let path = "examples/dictionary.txt"

proc addYears(dictionaryPath: string) =
    for line in lines dictionaryPath:
        echo line.toUpper , "2002"
        echo line , "2022"

addYears(path)

for line in lines path:
    echo line.toUpper[0]
    echo line