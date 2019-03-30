#!/bin/bash
#
# Generate the sudo command to upgrade all ubuntu packages EXCEPT open-vm-tools
# which seems to just hang without ever completing on my VirtualBox guest

file=apt-upgrade.sh

# the main install command...
echo -n "sudo apt-get install " > $file

# ... followed by all packages listed by --upgradable other than open-vm-tools
sudo apt list --upgradable | awk -F'/' '{print $1}' | grep -v "Listing..." | grep -v "open-vm-tools" | xargs echo >> $file

