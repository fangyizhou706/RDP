#! /bin/bash
printf "Check Out My Channel While Waiting- https://youtu.be/VeO22kIvZOQ" >&2
{
sudo useradd -m ALOK
sudo adduser ALOK sudo
echo 'ALOK:8426' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt update && sudo apt -y upgrade
curl -s https://rclone.org/install.sh | sudo bash
cd /home/ALOK/.config/rclone/
wget https://img1.e9run.workers.dev/0:down/rclone.conf
mkdir -p /home/gdrive
/usr/bin/rclone mount emby: /home/gdrive  --umask 0000  --default-permissions  --allow-non-empty  --allow-other  --buffer-size 32M  --dir-cache-time 12h  --vfs-read-chunk-size 64M  --vfs-read-chunk-size-limit 1G &
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=noninteractive \
apt install --assume-yes xfce4 desktop-base
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
sudo apt install --assume-yes xscreensaver
sudo systemctl Enable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
wget https://media.codeweavers.com/pub/crossover/cxlinux/demo/crossover_20.0.2-1.deb
sudo dpkg -i crossover_20.0.2-1.deb
sudo apt install --assume-yes --fix-broken
sudo apt install nautilus nano mc -y 
sudo apt install openssh-server -y
sudo apt -y install obs-studio
sudo apt -y install firefox
sudo apt -y install terminator
sudo adduser ALOK chrome-remote-desktop
} &> /dev/null &&
printf "\nSetup Completed " >&2 ||
printf "\nError Occured " >&2
printf '\nCheck https://remotedesktop.google.com/headless  Copy Command Of Debian Linux And Paste Down\n'
read -p "Paste Here: " CRP
su - ALOK -c """$CRP"""
printf 'Check https://remotedesktop.google.com/access/ \n'
printf 'Your SUDO Pasword Is 8426 \n'
printf 'Terminal issue solve - https://youtu.be/XZxxaNWJxT0'
