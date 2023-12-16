#!/bin/zsh

# VM's
vm1="regolith_i3"

clear

echo ""
echo "-> VM's disponíveis:"
echo " 1. $vm1"
sleep 1

echo ""
echo "-> Digite o número correspondente a VM que deseja ligar:"
read num


case $num in
  1)
    echo ""
    echo "-> VM $vm1 iniciando."
    echo ""
    virsh start $vm1
    ;;
  *)
    echo ""
    echo "-> Opção Inválida."
    echo ""
    ;;
esac

