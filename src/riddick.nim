import std/strutils

echo "|====== Riddick ======|"

let path = "examples/dictionary.txt"

proc normalDic(dictionaryPath: string) =
    for line in lines dictionaryPath:
        echo line


proc addYears(dictionaryPath: string) =
    for line in lines dictionaryPath:
        for i in 2000..2023:
            echo line , i

proc upperCase(dictionaryPath: string) =
    for line in lines dictionaryPath:
        echo line.toUpper


proc upperOneByOne(dictionaryPath: string) =
    for line in lines dictionaryPath:
        for index in 0 .. (line.len - 1):
            echo line[0 .. (index - 1)], ($line[index]).toUpper, line[(index+1) .. (line.len - 1)]


proc main() =
    normalDic(path)
    addYears(path)
    upperCase(path)
    upperOneByOne(path)

main()