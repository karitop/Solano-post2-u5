# VBoxManage_commands.sh
# Post-Contenido 2 - Unidad 5: Emuladores y Virtualización


setup-alpine
poweroff

VBoxManage controlvm "Lab5-Alpine" poweroff
VBoxManage hostonlyif create
VBoxManage modifyvm "Lab5-Alpine" --nic1 hostonly --hostonlyadapter1 "vboxnet0"
VBoxManage modifyvm "Lab5-Alpine" --nic1 bridged --bridgeadapter1 "Ethernet"
VBoxManage modifyvm "Lab5-Alpine" --nic1 nat

ip addr show eth0
ping -c 3 8.8.8.8

VBoxManage snapshot "Lab5-Alpine" take "snap_base" --description "Alpine Linux 3.19 recién instalado, sin modificaciones"
VBoxManage snapshot "Lab5-Alpine" take "snap_con_herramientas" --description "Alpine con curl, wget, nano y htop instalados"
VBoxManage snapshot "Lab5-Alpine" list
VBoxManage controlvm "Lab5-Alpine" poweroff
VBoxManage snapshot "Lab5-Alpine" restore "snap_base"
VBoxManage startvm "Lab5-Alpine" --type gui

apk update
apk add curl wget nano htop
apk info curl

VBoxManage controlvm "Lab5-Alpine" poweroff
VBoxManage export "Lab5-Alpine" --output "Lab5-Alpine-export.ova" --manifest --options manifest
dir Lab5-Alpine-export.ova