#!/usr/bin/env bash
THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR
  git submodule update --init --recursive

conf() {
read -p "Do you want to install and config? [y/n] = "
	if [ "$REPLY" == "y" ] || [ "$REPLY" == "Y" ]; then
        install
    elif [ "$REPLY" == "n" ] || [ "$REPLY" == "N" ]; then
        exit 1
	else
	    conf
fi
}

install(){
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt-get update
sudo apt-get upgrade
sudo apt-add-repository --remove ppa:ubuntu-toolchain-r/test
sudo apt-get install -f
sudo dpkg -a --configure
sudo apt-get dist-upgrade
sudo dpkg --configure -a
sudo sudo apt-get dist-upgrade
sudo apt-get install python-setuptools
sudo apt-get install python-pip
sudo apt-get install python-redis
sudo pip install pyTelegramBotAPI
sudo pip install pyTelegramBotAPI —upgrade
sudo apt-get update
sudo apt-get install python2.7
sudo pip install pytelegrambotapi py==1.4.29 pytest==2.7.2 requests==2.7.0 six==1.9.0 wheel==0.24.0
pip install --upgrade pip
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt-get update
sudo apt-get upgrade
sudo apt-add-repository --remove ppa:ubuntu-toolchain-r/test
sudo apt-get install -f
sudo dpkg -a --configure
sudo apt-get dist-upgrade
sudo dpkg --configure -a
sudo sudo apt-get dist-upgrade
sudo apt-get install php5.6 php5.6-mbstring php5.6-mcrypt php5.6-mysql php5.6-xml
sudo apt-get install php7.0-cli php7.0-common libapache2-mod-php7.0 php7.0 php7.0-mysql php7.0-fpm php7.0-curl php7.0-gd php7.0-bz2
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt-get update
sudo apt-get upgrade
sudo apt-add-repository --remove ppa:ubuntu-toolchain-r/test
sudo apt-get install -f
sudo dpkg -a --configure
sudo apt-get dist-upgrade
sudo dpkg --configure -a
sudo sudo apt-get dist-upgrade
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua5.1 liblua5.1-dev lua5.3 liblua5.3-dev lua50 liblua50-dev lua-socket lua-sec lua-expat libevent-dev libjansson* libpython-dev make unzip git redis-server g++ autoconf
sudo apt-get install lua50
sudo apt-get install lua5.1
sudo apt-get install lua5.2
sudo apt-get install lua5.3
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt-get update
sudo apt-get upgrade
sudo apt-add-repository --remove ppa:ubuntu-toolchain-r/test
sudo apt-get install -f
sudo dpkg -a --configure
sudo apt-get dist-upgrade
sudo dpkg --configure -a
sudo sudo apt-get dist-upgrade
wget http://luarocks.org/releases/luarocks-2.4.2.tar.gz
tar zxpf luarocks-2.2.2.tar.gz
cd luarocks-2.4.2
  PREFIX="$THIS_DIR/.luarocks"
  ./configure --prefix=$PREFIX --sysconfdir=$PREFIX/luarocks --force-config
 make build && make install
./configure; sudo make bootstrap
 sudo luarocks install luasec
 sudo luarocks install luasocket
sudo luarocks install redis-lua
 sudo luarocks install lua-term
sudo luarocks install serpent
 sudo luarocks install dkjson
sudo luarocks install Lua-cURL
  ./.luarocks/bin/luarocks install luasocket  
  ./.luarocks/bin/luarocks install oauth
  ./.luarocks/bin/luarocks install redis-lua
  ./.luarocks/bin/luarocks install lua-cjson
  ./.luarocks/bin/luarocks install fakeredis
  ./.luarocks/bin/luarocks install xml
  ./.luarocks/bin/luarocks install feedparser
  ./.luarocks/bin/luarocks install serpent
  cd ..
rm -rf luarocks-2.4.2.tar.gz
  rm -rf luarocks-2.4.2
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt-get update
sudo apt-get upgrade
sudo apt-add-repository --remove ppa:ubuntu-toolchain-r/test
sudo apt-get install -f
sudo dpkg -a --configure
sudo apt-get dist-upgrade
sudo dpkg --configure -a
sudo sudo apt-get dist-upgrade
sudo ppa-purge
sudo service redis-server restart
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev
sudo pip3 install termcolor
sudo pip3 install psutil
sudo apt-get install python3.5
sudo apt-get install python3-pip
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt-get update
sudo apt-get upgrade
sudo apt-add-repository --remove ppa:ubuntu-toolchain-r/test
sudo apt-get install -f
sudo dpkg -a --configure
sudo apt-get dist-upgrade
sudo dpkg --configure -a
sudo sudo apt-get dist-upgrade
cd $home
git clone https://github.com/keplerproject/luarocks.git
  cd luarocks
  git checkout tags/v2.4.2 # Current stable
  ./configure --prefix=$PREFIX --sysconfdir=$PREFIX/luarocks --force-config
  make build && make install
  ./bin/luarocks install luasocket  
  ./bin/luarocks install oauth
  ./bin/luarocks install redis-lua
  ./bin/luarocks install lua-cjson
  ./bin/luarocks install fakeredis
  ./bin/luarocks install xml
  ./bin/luarocks install feedparser
  ./bin/luarocks install serpent
  cd ..
  ./.luarocks/bin/luarocks install luasocket  
  ./.luarocks/bin/luarocks install oauth
  ./.luarocks/bin/luarocks install redis-lua
  ./.luarocks/bin/luarocks install lua-cjson
  ./.luarocks/bin/luarocks install fakeredis
  ./.luarocks/bin/luarocks install xml
  ./.luarocks/bin/luarocks install feedparser
  ./.luarocks/bin/luarocks install serpent
  sudo apt-get update
sudo apt-get upgrade
sudo apt-add-repository --remove ppa:ubuntu-toolchain-r/test
sudo apt-get install -f
sudo dpkg -a --configure
sudo apt-get dist-upgrade
sudo dpkg --configure -a
sudo sudo apt-get dist-upgrade
git pull
  git submodule update --init --recursive
  patch -i "patches/disable-python-and-libjansson.patch" -p 0 --batch --forward
  cd tg
    autoconf -i 
  ./configure && make
  cd ..
 git clone --recursive https://github.com/vysheng/tg.git && cd tg
  sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev libjansson-dev libpython-dev make 
     PREFIX="$THIS_DIR/.tg"
  ./configure --prefix=$PREFIX --sysconfdir=$PREFIX/tg --force-config
   brew install libconfig readline lua python libevent jansson
   export CFLAGS="-I/usr/local/include -I/usr/local/Cellar/readline/6.3.8/include"
   export LDFLAGS="-L/usr/local/lib -L/usr/local/Cellar/readline/6.3.8/lib"
    ./configure && make
     env CC=clang CFLAGS=-I/usr/local/include LDFLAGS=-L/usr/local/lib LUA=/usr/local/bin/lua52 LUA_INCLUDE=-I/usr/local/include/lua52 LUA_LIB=-llua-5.2 ./configure
     ./.tg/make
      cd $home
      rm -rf luarocks
      rm -rf KingPKG
      rm -rf tg
      echo -e "install and configuration completed!"
      read -p "Do you want to reboot system? [y/n] = "
	if [ "$REPLY" == "y" ] || [ "$REPLY" == "Y" ]; then
        sudo reboot
    elif [ "$REPLY" == "n" ] || [ "$REPLY" == "N" ]; then
        exit 1
   fi
}

if [ "$1" = "conf" ]; then
  conf
fi



