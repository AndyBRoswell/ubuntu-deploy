cwd=$PWD
shdir=$PWD/$(dirname $0)

cd $shdir

# add shell aliases
sudo cp .bashrc ~/.bashrc
sudo cp root.bashrc  /root/.bashrc

# add fonts
sudo cp CONSOLA.TTF /usr/share/fonts/CONSOLA.TTF

# install software for development
chmod +x inst-dev-sw.sh
./inst-dev-sw.sh

cd $cwd