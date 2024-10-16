echo -e "\033[0;36mPierogOS Cubic Customisation Script\033[0m"

echo "
Contents
========

1. Plymouth Customisation
2. Ubiquity Customisation
3. Background Image Customisation
4. Neofetch Customisation
5. Icon Customisation
"

echo -e "\033[0;32m[INFO]\033[0m Installing Wget..."
sudo apt install wget -y

#Customise Plymouth
#echo -e "\033[0;32m[INFO]\033[0m Beginning Plymouth Customisation..."

#Customise Ubiquity
#echo -e "\033[0;32m[INFO]\033[0m Beginning Ubiquity Customisation..."

#Customise Backgrounds
echo -e "\033[0;32m[INFO]\033[0m Beginning Background Customisation..."
mkdir /usr/share/backgrounds/pierogos
cd /usr/share/backgrounds/pierogos

base_url="https://raw.githubusercontent.com/polish-penguin-dev/PierogOS/refs/heads/main/Assets/Backgrounds/PierogOS_BG"
for i in 1 2 3 4
do
    wget "${base_url}${i}.png"
done

cd /usr/share/gnome-background-properties
wget https://github.com/polish-penguin-dev/PierogOS/raw/refs/heads/main/Assets/Backgrounds/Wallpapers.xml

override_file="/usr/share/glib-2.0/schemas/pierogos-wallpaper.gschema.override"

echo "[org.gnome.desktop.background]" > $override_file
echo "picture-uri = 'file:///usr/share/backgrounds/pierogos/PierogOS_BG1.png'" >> $override_file
echo "picture-options = 'zoom'" >> $override_file

glib-compile-schemas /usr/share/glib-2.0/schemas/

echo -e "\033[0;32m[INFO]\033[0m Completed Background Customisation..."

#Customise Neofetch
#echo -e "\033[0;32m[INFO]\033[0m Beginning Neofetch Customisation..."

#Customise Icons
#echo -e "\033[0;32m[INFO]\033[0m Beginning Icon Customisation..."

