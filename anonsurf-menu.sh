menu()
{
clear 
printf "\e[96m
#########################
#     \e[92mANONSURF-MENU    \e[96m #
#########################
\e[93m------------------------\n"

if
sudo systemctl is-active --quiet tor 
then
printf "\e[96mANONSURF:\e[92m AKTYWNY\n\e[93m------------------------\n"
else
printf "\e[96mANONSURF:\e[91m NIEAKTYWNY\n\e[93m------------------------\n"
fi


printf "\e[96mMOJE IP:\e[92m $(curl -s ifconfig.me)\n\e[93m------------------------"
printf "\n"
printf "\e[96m[\e[91m1\e[96m] \e[92mURUCHOM ANONSURF\n"
printf "\e[96m[\e[91m2\e[96m] \e[92mZATRZYMAJ ANONSURF\n"
printf "\e[96m[\e[91m3\e[96m] \e[92mWYJŚCIE\n"
printf "\e[93m"
read -p "OPCJA: " opcja
printf "\e[0m"
case $opcja in
1) clear;sudo start-anonsurf;menu;;
2) clear;sudo stop-anonsurf;menu;;
3) exit;;
*) printf "\e[91m[ i ] ZŁA OPCJA! SRRÓBUJ PONOWNIE...\e[0m";sleep 1.2;menu;;
esac 
}

menu
