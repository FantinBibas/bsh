if [ ${1:-""} = "-h" ]; then
    echo "Usage: "$(basename "$0")" [ installDirectory ] [ rcFileDirectory ] [ rcFileName ]"
    exit 0
fi

installDirectory=${1:-~}
rcDirectory=${2:-~}
rcFileName=${3:-".$(basename "$SHELL")rc"}
currentDirectory="$(cd "$(dirname "$0")" && pwd)"

echo "Installing bsh..."

cp -Tr "$currentDirectory/bsh_files" "$installDirectory/.bsh"

callLine=". $installDirectory/.bsh/main.sh"

grep -q "$callLine" "$rcDirectory/$rcFileName" || echo "$callLine" >> "$rcDirectory/$rcFileName"

echo "Bsh installed. Reload your terminal ;)"

