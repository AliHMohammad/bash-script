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

# Install packages
if [ "$install" ]; then
	if ["$manjaro"]; then
		echo "Installing packages for Manjaro"
	else
		echo "Installing packages for Ubuntu"
		sudo apt update
		sudo apt install -y apt-transport-https curl gpg

		# sudo ./install-repo.sh

		sudo apt update
		sudo apt upgrade -y

		# Install apt packages
		#sudo xargs apt install -y ./.extra/req.apt
	fi


	echo "Installation completed!"
fi

# Final setup
cp ../home /home/alihmohammad

echo "Install Script complete!"

