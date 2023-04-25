#!/bin/bash

set -eu


list_ips ()
{
  virsh list --name | while read n 
  do 
    [[ -n "$n" ]] || continue
    echo "Instance name: $n"
    virsh domifaddr $n | grep ipv4
  done
}


connect_resolve () {
  local name=$1

  if virsh list --name | grep -q "^$1$"; then
    virsh domifaddr "$1" | grep ipv4 | awk '{print $4 }' | sed 's@/.*@@'
  else
    echo "$name"
  fi 

}

connect () {
  local target=$1

  target=$(connect_resolve $target)
  echo "Connecting in ssh to $target ..."
  ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o GlobalKnownHostsFile=/dev/null -l ops $target
}

if [[ -n "${1-}" ]]; then
  connect $1
else
  list_ips
fi


