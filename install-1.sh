#!/bin/bash/
# installing some packages like gnome and other stuff
sudo pacman -S wget discord prismlauncher zsh kitty gnome firefox flatpak meson systemd git dbus libinih gcc pkgconf power-profiles-daemon cpupower starship
# doing gits and stuff
# papirus icons
wget -qO- https://git.io/papirus-icon-theme-install | sh
# win10os cursor
mkdir /usr/share/icons/ Win10OS-cursordo s
git clone https://github.com/yeyushengfan258/Win10OS-cursors.git
cd Win10OS-cursors
./install.sh
cd
# gamemode 
git clone https://github.com/FeralInteractive/gamemode.git
cd gamemode
git checkout 1.8.2 
./bootstrap.sh
sudo groupadd gamemode
sudo usermod -aG gamemode craftyy
gamemoded -trc
# getting yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# kitty stuff
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
cd ~/.config/kitty
ln -s ./kitty-themes/themes/AtelierSulphurpool.conf ~/.config/kitty/theme.conf
echo "include ./theme.conf" >> ~/.config/kitty/kitty.conf
# making zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# nerd font
sudo pacman -S ttf-jetbrains-mono-nerd
echo "make sure to set the font for starship by doing  kitten choose-fonts"
# starship
echo " eval "$(starship init zsh)" " >> ~/.zshrc
starship preset tokyo-night -o ~/.config/starship.toml
# gnome extensions
sudo pacman -S extension-manager gnome-shell-extension-dash-to-dock-git gnome-shell-extension-appindicator 
gnome-extensions enable dash-to-dock@micxgx.gmail.com
gnome-extensions enable appindicatorsupport@rgcjonas.gmail.com
echo "install openbar and blur my shell when on desktop"

