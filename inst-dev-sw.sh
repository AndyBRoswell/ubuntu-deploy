# update repo
# add repo
# sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
extra_mirror="deb [trusted=true] http://mirrors.ustc.edu.cn/ubuntu stable main contrib non-free
# deb-src [trusted=true] http://mirrors.ustc.edu.cn/ubuntu stable main contrib non-free
deb [trusted=true] http://mirrors.ustc.edu.cn/ubuntu stable-updates main contrib non-free
# deb-src [trusted=true] http://mirrors.ustc.edu.cn/ubuntu stable-updates main contrib non-free

# deb [trusted=true] http://mirrors.ustc.edu.cn/ubuntu stable-proposed-updates main contrib non-free
# deb-src [trusted=true] http://mirrors.ustc.edu.cn/ubuntu stable-proposed-updates main contrib non-free
"
echo "$extra_mirror" >> /etc/apt/sources.list
# sudo cp sources.list /etc/apt/sources.list

# Before installing .NET, add the Microsoft package signing key to list of trusted keys and add the pkg repo.
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

# update
sudo apt update
sudo apt upgrade

# CPP toolchains
# "-y": assume the answer to all prompts is yes
sudo apt install -y gcc g++ clang llvm gdb lldb make cmake

# Qt prerequisites
sudo apt install -y libgl1-mesa-dev
sudo apt install -y g++ make libglib2.0-dev libsm-dev libxrender-dev libfontconfig1-dev libxext-dev libfreetype6-dev libx11-dev libxcursor-dev libxfixes-dev libxft-dev libxi-dev libxrandr-dev

# Python toolchains
sudo apt install -y python3-pip
sudo apt install -y python3-venv

# Java toolchains
# sudo apt install -y openjdk-17-jre-headless

# .NET toolchains
# Install the SDK
sudo apt install -y apt-transport-https
sudo apt install -y dotnet-sdk-6.0
sudo apt install -y aspnetcore-runtime-6.0
sudo apt install -y dotnet-runtime-6.0

# text editor
sudo snap install code --classic    # Visual Studio Code

# IDEs
sudo snap install clion --classic
sudo snap install intellij-idea-ultimate --classic
sudo snap install pycharm-professional --classic
sudo snap install rider --classic
# sudo snap install dotCover --classic
# sudo snap install dotMemory --classic
# sudo snap install dotTrace --classic

# Docker
sudo snap install docker

# update repo again
sudo apt update
sudo apt upgrade
