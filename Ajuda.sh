#!/bin/bash
echo "============================="
echo "=     Ajuda no Linux        ="
echo "============================="
echo "Obrigado Senhor(a)$USER Por esta acessando ajuda do linux" 
main()
 {
echo "Escolha uma opçao para você ver sobre o seu pc"
echo "1- Atualizar"
echo "2- Corrigio erro dpkg: error: parsing file /var/lib/dpkg/updates/0014"
echo "3- Corrigir /var/lib/dpkg/lock"
read opcao;
   case $opcao in
   "1")
     Atualizar
     ;;
   "2")
  Dpkg104
     ;;
   "3")
    DpkgLock
    ;;
esac
}
Atualizar()
{
sudo apt-get update && sudo apt-get upgrade
clear
echo "Pronto."
}

Dpkg104()
{
sudo rm /var/lib/dpkg/updates/0014
clear
sudo apt-get clean
clear
sudo apt-get update
clear
sudo dpkg --configure -a
clear
echo "Pronto."
}
DpkgLock()
{
sudo rm -rf /var/lib/apt/lists/lock
clear
sudo apt-get update
clear
sudo dpkg --configure -a
clear
sudo apt-get -f install
clear
echo "Pronto."
}




main
