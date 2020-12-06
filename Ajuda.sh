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
echo "3- Cd_Area_De_Trabalho"
echo "4- Cd_Documentos"
echo "5- Cd_Downloads"
read opcao;
   case $opcao in
"1")
Atualizar
;;
"2")
Limpar_lixeira
;;
"3")
Cd_Area_De_Trabalho
;;
"4")
Cd_Documentos
;;
"5")
Cd_Downloads
;;
esac
Atualizar()
{

}
Limpa_lixeira()
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
Cd_Area_De_Trabalho()
{

}
Cd_Documentos()
{
cd Documentos
clear
}
Cd_Downloads()
{
cd Downloads
clear
}
