# Runs for every Z shell
function fname() { find . -iname "*$@*"; }
function psgrep() { ps axu | grep -v grep | grep "$@" -i --color=auto; }
function rspec() {
  if [ -S .zeus.sock ]; then
    zeus rspec "$@"
  else
    command rspec "$@"
  fi
}
