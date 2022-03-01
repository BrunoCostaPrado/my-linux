echo "Insira o packet manager"
echo -n "1-para APT| 2-Para pacman: "
read pac
if [[pac -eq 1]]; then
    sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y && sudo apt update
else
    sudo pacman -Syyuu
fi
