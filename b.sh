#!/bin/bash

installDirectory=~
rcDirectory=~
rcFileName=".$(basename "$SHELL")rc"
currentDirectory="$(cd "$(dirname "$0")" && pwd)"

echo "Installing bsh..."

cp -Tr "$currentDirectory/bsh_files" "$installDirectory/.bsh"

callLine=". $installDirectory/.bsh/main.sh"

update=1
grep -q "$callLine" "$rcDirectory/$rcFileName" || (echo "$callLine" >> "$rcDirectory/$rcFileName" && update=0)

if [ "$update" -eq "1" ]
then
    echo "Bsh updated !"
else
    echo "Bsh installed. Reload your terminal ;)"
fi

