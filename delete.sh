#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   echo "Run this as 'root'." 1>&2
   exit 1
fi

virsh net-destroy default
virsh net-undefine default
echo "delete complete :)"
