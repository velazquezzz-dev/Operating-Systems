#!/bin/bash
echo "Enter the virtual machine name: "
read vm_name
echo "Enter the virtual machine os: "
read vm_os

#Create the Virtual Machine
VBoxManage createvm --name "$vm_name" --ostype "$vm_os" --register

echo "Enter the number of CPUS: "
read vm_cpus
echo "Enter the size of memory (GB) ram: "
read vm_ram
echo "Enter the size of vram: "
read vm_vram

#Add CPU, RAM and VRAM to Virtual Machine
VBoxManage modifyvm "$vm_name" --cpus "$vm_cpus" --memory "$vm_ram" --vram "$vm_vram" 

#Add Virtual Network to Virtual Machine
VBoxManage modifyvm "$vm_name" --nic1 bridged --bridgeadapter1 eth0

echo "Enter the virtual hard disk size: "
read vm_disk

#Add Virtual Hard Disk to Virtual Machine
VBoxManage createhd --filename "$vm_name.vdi" --size "$vm_disk" --variant Standard

echo "Enter the name of a SATA controller: "
read vm_sata

#Add SATA to Virtual Machine
VBoxManage storagectl "$vm_name" --name "$vm_sata" --add sata --bootable on

VBoxManage storageattach "$vm_name" --storagectl "$vm_sata" --port 0 --device 0 --type hdd --medium "$vm_name.vdi"

echo "Enter the name of an IDE controller: "
read vm_ide

#Add IDE to Virtual Machine
VBoxManage storagectl "$vm_name" --name "$vm_ide" --add ide


echo "The VM called $vm_name with the $vm_os operating system has $vm_cpus CPUs and $vm_ram GB of memory with a virtual hard disk size of $vm_disk. It has the $vm_sata controller and the IDE controller $vm_ide"


#Inspect VM
VBoxManage showinfo "$vm_name"
