NAME=centos64-x86_64
TYPE=RedHat_64
INSTALLER_PATH="./isos/"
INSTALLER_ISO="CentOS-6.4-x86_64-minimal.iso"
GUESTADDITIONS_PATH=""
OS_NAME=`uname`

#Determining OS and setting VBoxGuestAdditions default path accordingly
if [ $OS_NAME == "Linux" ]; then
    # Default Linux Location of Guest Additions
	GUESTADDITIONS_PATH=/usr/share/virtualbox/VBoxGuestAdditions.iso
elif [ $OS_NAME == "Darwin" ]; then
	# Default MAC Location of Guest Additions
	GUESTADDITIONS_PATH=/Applications/VirtualBox.app/Contents/MacOS/VBoxGuestAdditions.iso
else
	echo "ERROR: Couldn't determine VBoxGuestAdditions path!!!.Find manually and update vars.sh with the right path. Aborting..."
	exit 1
fi

GUESTADDITIONS="./isos/VBoxGuestAdditions-4.3.6.iso"
HDD="${HOME}/VirtualBox VMs/${NAME}/main.vdi"
HDD_SWAP="${HOME}/VirtualBox VMs/${NAME}/swap.vdi"
NATNET=10.0.2.0/24

# Main vault location to find a mirror: http://vault.centos.org/6.4/isos/x86_64/CentOS-6.4-x86_64-minimal.iso
CENTOS_6_4_MINIMAL_URL=http://mirror.symnds.com/distributions/CentOS-vault/6.4/isos/x86_64/CentOS-6.4-x86_64-minimal.iso
CENTOS_6_5_MINIMAL_URL=http://mirror.rackspace.com/CentOS/6.5/isos/x86_64/CentOS-6.5-x86_64-minimal.iso
