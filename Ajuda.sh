#!/bin/bash
echo "============================="
echo "=     Ajuda no Linux        ="
echo "============================="
echo "Obrigado Senhor(a)$USER Por estar acessando O Informaçao Do pc" 
main()
 {
echo "Escolha um numero para executar no seu Linux"
echo "1- Atualizar"
echo "2- Limpa_lixeira"
read opcao;
   case $opcao in
"1")
Atualizar
;;
"2")
Limpar_lixeira
;;
esac
Atualizar()
{
echo "Atualizando......"
 sudo apt-get upgrade

clear
echo "done"
}
Limpar_lixeira()
{  
echo "Esvaziando a lixeira..."
  path="${HOME}/.local/share/Trash/files"
  cd "$path"
  for file in *
  do
  rm -rf "$file"
  done
  echo "Done!"
}
main
