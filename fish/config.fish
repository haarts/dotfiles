set fish_greeting
set -xg GOPATH $HOME/prj/go
set -xg RUSTPATH $HOME/.cargo
set -xg PATH \
	$HOME/local/julia/bin \
	$RUSTPATH/bin \
	$GOPATH/bin \
	$HOME/.gem/ruby/2.5.0/bin \
	$HOME/.local/bin \
	$HOME/local/bin \
	$HOME/.pub-cache/bin \
	$HOME/local/Android/Sdk/platform-tools \
	$HOME/local/android-studio/bin \
	$HOME/local/flutter/bin/cache/dart-sdk/bin \
	$HOME/local/flutter/bin \
	/usr/local/go/bin \
	$PATH
set -xg EDITOR kak
alias o 'xdg-open'

starship init fish | source
