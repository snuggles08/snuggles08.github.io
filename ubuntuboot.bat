#!ipxe
#dhcp
echo Starting Ubuntu x64 installer for ${mac}
set base-url http://archive.ubuntu.com/ubuntu/dists/wily/main/installer-amd64/current/images/netboot/ubuntu-installer/amd64
kernel ${base-url}/linux
initrd ${base-url}/initrd.gz
#imgargs linux auto=true url=http://yourserver/some/path/preseed.cfg
boot || 
# If everything failed, give the user some options
echo Boot from ${base-url} failed
prompt --key 0x197e --timeout 2000 Press F12 to investigate || exit
shell
