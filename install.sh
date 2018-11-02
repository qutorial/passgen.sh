function getpkg() {
  thepackage=$1
  if [ `apt -qq list "$thepackage" 2>/dev/null | grep installed | wc -l` -eq "0" ]; then
    echo "$thepackage was not found. Installing..."
    apt-get install "$thepackage" || { printf "Package $thepackage could not be installed!\nRun as root?\n";  }
  fi
}

getpkg apg



