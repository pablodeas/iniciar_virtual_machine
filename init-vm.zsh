#!/bin/zsh

# VM's
vm1="opensuse01"

clear

function logo () {
  echo ""
  echo "---------------- -------------------------------- --------------"
  echo "---------------- Gerenciador de Máquinas Virtuais --------------" 
  echo "---------------- -------------------------------- --------------"
}

function menu () {
  echo ""
  echo "---"
  echo "-> VM's disponíveis:"
  echo " 1. $vm1"
  echo "---"
  sleep 1

  echo ""
  echo "---"
  echo "-> Digite o número correspondente a VM que deseja ligar:"
  echo "-> Caso deseje sair, digite 0:"
  echo "---"
  read num
}

function option_verify () {
  case $num in
    0)
      echo ""
      echo "---"
      echo "-> Saindo..."
      echo "---"
      echo ""
      exit
      ;;
    1)
      echo ""
      echo "---"
      echo "-> VM $vm1 iniciando."
      echo "---"
      echo ""
      virsh start $vm1
      ;;
    *)
      echo ""
      echo "---"
      echo "-> Opção Inválida. Tente novamente"
      echo "---"
      echo ""
      menu
      option_verify
      ;;
  esac
}

# Execution of the functions
logo
menu
option_verify