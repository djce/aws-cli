#!/bin/bash
DIR="$( dirname "$0" )"
case "$DIR" in
	/*) ;;
	*) DIR="$PWD/$DIR" ;;
esac
export PATH="$PATH:$DIR/bin"
export RUBYLIB="$RUBYLIB:$DIR/lib"
