#!/bin/bash
echo "============================="
echo "=     Ajuda no Linux        ="
echo "============================="
echo "Obrigado Senhor(a)$USER Por esta acessando ajuda do linux" 

main()
 {
echo "1-Atualizar"
echo "2-Limpar lixeira"
echo "3-Arruma bug dpkg"
read opcao;
   case $opcao in
  "1")
   Atualizar
     ;;
   "2")
   Limpar_lixeira
     ;;
   "3")
    Arruma_bug_dpkg
     ;;
 esac
 Atualizar()
{
}
 Limpar_lixeira()
{
}
}
main

