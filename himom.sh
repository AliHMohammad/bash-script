#!/bin/bash
set -e

while getopts igm flag
do
	case "${flag}" in
	i) install=true;;
	g) gui=true;;
	m) manjaro=true;;
	esac
done

echo "install? : $install"
echo "gui? : $gui"
echo "manjaro? : $manjaro"
