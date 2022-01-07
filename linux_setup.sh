sudo apt-get update
sudo apt-get upgrade -y

# Seclists word lists
sudo apt-get install seclists -y

# Timeshift
sudo apt-get install timeshift -y

# Get Signal
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop

# Cowsay/fortune for pointless fun
sudo apt-get install cowsay -y
sudo apt-get install fortune -y
echo "if [ -x /usr/games/cowsay -a -x /usr/games/fortune ]; then" >> ~/.zshrc
echo "   fortune | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1)" >> ~/.zshrc
echo "fi" >> ~/.zshrc

echo 'alias thm="sudo openvpn ~/Downloads/p05t.ovpn"' >> ~/.zshrc
echo 'set autoindent' >> /etc/nanorc
echo 'set tabsize 4' >> /etc/nanorc

# GEF/GDB
wget -O ~/.gdbinit-gef.py -q https://github.com/hugsy/gef/raw/master/gef.py
echo source ~/.gdbinit-gef.py > ~/.gdbinit
echo "set disassembly-flavor intel" >> ~/.gdbinit
echo "gef config context.show_registers_raw True" >> ~/.gdbinit

# Exploit DB
sudo apt-get install exploitdb -y

# gobuster
sudo apt-get install gobuster -y

# Bluetooth enable on boot
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service

# Nvidia Drivers - allows use of GPU with hashcat
sudo apt install -y nvidia-driver nvidia-cuda-toolkit
