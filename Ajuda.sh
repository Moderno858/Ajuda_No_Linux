#!/bin/bash
echo "============================="
echo "=     Ajuda no Linux        ="
echo "============================="

echo "Obrigado Senhor(a)$USER Por esta acessando ajuda do linux" 
echo "Ah eu uso a versao Linux Mint 19"
main()
 {
echo "Escolha uma opçao para você ver sobre o seu pc"
echo "1- Atualizar Documentos"
echo "2- Corrigio erro dpkg: error: parsing file /var/lib/dpkg/updates/0014"
echo "3- Corrigir /var/lib/dpkg/lock"
echo "4-  Erro persitente no dpkg que impede qualquer instalação"
echo "5- Pacotes quebrados AVISO:sistema reiniciar e entrar em modo de recuperação mas ele ira ligar!"
echo "6- Pacotes quebrados so use esse caso o de cima nao tenha fucionado Mas antes reinicie o seu Computador para ver se o erro nao arrumou caso nao tenha arrumado pode executar esse comando."
echo "7- Erros no sudo apt get"
echo "8-Limpar Lixeira "
echo "9- Atualiza os softwares disponivel"
echo "10- Cd Area de trabalho"
echo "11- Cd Documentos"
echo "12- Downloads"
echo "13- Limpar tudo que você nao usou nos utimos 30 dias."
echo "14- Ver pastas oculta"
echo "15- Ver o seu ip da net e outras coisas sobre o pc"
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
"6")
Pacotes2
;;
"7")
Erros2
;;
"8")
Limpar_Lixeira
;;
"9")
Atualizar2
;;
"10")
Area
;;
"11")
Documentos
;;
"12")
Downloads
;;
"13")
Limpar2
;;
"14")
Oculto
;;
"15")
config
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
echo "============================="
echo "=     Ajuda no Linux        ="
echo "============================="
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
echo "============================="
echo "=     Ajuda no Linux        ="
echo "============================="
}
Pacotes2()
{
sudo fuser -cuk /var/lib/dpkg/lock
clear 
sudo rm -f /var/lib/dpkg/lock
clear
sudo fuser -cuk /var/cache/apt/archives/lock
clear
sudo rm -f /var/cache/apt/archives/lock
clear
echo "Pronto."
echo "============================="
echo "=     Ajuda no Linux        ="
echo "============================="
}
Erros2()
{
sudo apt install -f
clear
echo "Pronto."
echo "============================="
echo "=     Ajuda no Linux        ="
echo "============================="
}
Limpar_Lixeira()
{
  echo "Esvaziando a lixeira..."
  path="${HOME}/.local/share/Trash/files"
  cd "$path"
  for file in *
  do
  rm -rf "$file"
  done
clear
  echo "Pronto."
echo "============================="
echo "=     Ajuda no Linux        ="
echo "============================="
}
Atualizar2()
{
sudo apt gent instal manager
echo "============================="
echo "=     Ajuda no Linux        ="
echo "============================="
}
Area()
{
cd Área\ de\ Trabalho/
echo "Pronto."
echo "============================="
echo "=     Ajuda no Linux        ="
echo "============================="
}
Documentos()
{
cd Documentos
echo "Pronto"
echo "============================="
echo "=     Ajuda no Linux        ="
echo "============================="
}
Downloads()
{
cd Downloads
echo "Pronto"
echo "============================="
echo "=     Ajuda no Linux        ="
echo "============================="
}
Limpar2()
{
sudo apt-get autoremove && sudo apt-get clean
clear
echo "Pronto"
echo "============================="
echo "=     Ajuda no Linux        ="
echo "============================="
}
Oculto()
{
ls -l
}
config()
{
ifconfig
echo "============================="
echo "=     Ajuda no Linux        ="
echo "============================="
}
main
