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
echo "4-  Erro persitente no dpkg que impede qualquer instalação"
echo "5- Pacotes quebrados AVISO:sistema reiniciar e entrar em modo de recuperação mas ele ira ligar!"

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
"4")
Erro
;;
"5")
Pacotes
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
Erro()
{
sudo apt-get clean
clear
sudo apt-get autoclean
clear
sudo apt-get autoremove
clear
sudo dpkg --configure -a
clear
sudo apt-get install -f
clear
sudo apt-get remove -f
clear
sudo apt-get update && sudo apt-get upgrade
clear
echo "Pronto."
}
Pacotes()
{
sudo apt-get clean && sudo apt-get update
clear
sudo apt-get install -f
clear
sudo apt-get -f install && sudo dpkg --configure -a
clear
sudo dpkg --configure -a
clear
sudo rm /var/lib/apt/lists/* -vf
clear
sudo apt-get update
clear
echo "Pronto"
echo "Caso nao tenha fucionando use a tecla 6."
}



main
