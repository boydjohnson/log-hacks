#!/usr/bin/env bash

set -e

function usage {
	cat <<-USAGE
${BLUE}

strip-float.sh -f <FILTER>

Options:
    -f : text to filter on [Required]
    -h : display help text

examples:

grep "validator-1_1" bench.log | $0 -f "put"

${NORMAL}
USAGE
}

BLUE=$(printf '\033[35;1m')
NORMAL=$(printf '\033[0m')

while getopts hf:: arg
do
	case $arg in
		h)
			usage; exit 0
			;;
		f)
			cat /dev/stdin | grep "$OPTARG" | sed -E "s/.*$OPTARG.*([0-9]+\.[0-9]+)ms.*/\1/"
			;;
		*)
			usage; exit 1
			;;
	esac
done

