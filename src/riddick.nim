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


proc main() =
    normalDic(path)
    addYears(path)
    upperCase(path)

main()