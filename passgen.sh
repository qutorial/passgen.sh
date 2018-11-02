function getpkg() {
  thepackage=$1
  if [ `apt -qq list "$thepackage" 2>/dev/null | grep installed | wc -l` -eq "0" ]; then
    echo "$thepackage was not found. Installing..."
    apt-get install "$thepackage" || { echo "Package $thepackage could not be installed!"; exit 10; }
  fi
}

getpkg apg

alias passgen="apg -a0 -m40 | tr 'z' 'D' | tr 'Z' '4' | tr 'y' 'H' | tr 'Y' 'R' | tr 'I' 'B' | tr 'l' '8' | tr 'I' 'X' | tr '1' 'M' | tr '0' 'U' | tr 'O' 'p' | tr 'J' 'q' "


