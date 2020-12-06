#!/bin/bash
echo "============================="
echo "=     Ajuda no Linux        ="
echo "============================="
echo "Obrigado Senhor(a)$USER Por esta acessando Ajuda no linux" 
main()
 {
echo "Escolha um numero  para você ver sobre o seu pc"
echo "1- Home"
echo "2- Loganame"
echo "3- Liguagem"
echo "4- Uid"
echo "5- Display"
echo "6- Windowid"
echo "7- Colortem"
echo "8- Shell"
echo "9- Session_Manager "
echo "10- Path"
read opcao;
   case $opcao in
   "1")
      Home
     ;;
   "2")
     Loganame
     ;;
   "3")
    Liguagem
     ;;
    "4")
      Uid
      ;;
     "5")
       Display
      ;;
      "6")
      Windowid
     ;;
     "7")
     Colortem
     ;;
     "8")
      Shell
     ;;
     "9")
      Session_Manager
     ;;
     "10")
      Path
     ;;
 esac
