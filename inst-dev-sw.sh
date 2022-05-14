# update repo
# add repo
sudo cp sources.list /etc/apt/sources.list

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
sudo apt install libgl1-mesa-dev
sudo apt install g++ make libglib2.0-dev libsm-dev libxrender-dev libfontconfig1-dev libxext-dev libfreetype6-dev libx11-dev libxcursor-dev libxfixes-dev libxft-dev libxi-dev libxrandr-dev

# Python toolchains
sudo apt install -y python3-pip

# Java toolchains
# sudo apt install -y openjdk-17-jre-headless

# .NET toolchains
# Install the SDK
sudo apt-get install -y apt-transport-https
sudo apt-get install -y dotnet-sdk-6.0
sudo apt-get install -y aspnetcore-runtime-6.0
sudo apt-get install -y dotnet-runtime-6.0

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

# update repo again
sudo apt update
sudo apt upgrade
