#!/bin/bash
DIR="$( dirname "${BASH_ARGV[0]}" )"
case "$DIR" in
	/*) ;;
	*) DIR="$PWD/$DIR" ;;
esac
export PATH="$DIR/bin:$PATH"
export RUBYLIB="$DIR/lib:$RUBYLIB"
