#!/usr/bin/env bash
THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR

update() {
  git pull
  git submodule update --init --recursive
  install_rocks
}

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
tar zxpf luarocks-2.2.2.tar.gz$ cd luarocks-2.4.2
./configure; sudo make bootstrap
 sudo luarocks install luasec
 sudo luarocks install luasocket
sudo luarocks install redis-lua
 sudo luarocks install lua-term
sudo luarocks install serpent
 sudo luarocks install dkjson
sudo luarocks install Lua-cURL
cd ..
rm -rf luarocks-2.4.2.tar.gz
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

# Will install luarocks on THIS_DIR/.luarocks
install_luarocks() {
  git clone https://github.com/keplerproject/luarocks.git
  cd luarocks
  git checkout tags/v2.4.2 # Current stable

  PREFIX="$THIS_DIR/.luarocks"

  ./configure --prefix=$PREFIX --sysconfdir=$PREFIX/luarocks --force-config

  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  make build && make install
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting.";exit $RET;
  fi

  cd ..
  rm -rf luarocks
}

install_rocks() {
  ./.luarocks/bin/luarocks install luasocket
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install oauth
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install redis-lua
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install lua-cjson
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install fakeredis
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install xml
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install feedparser
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install serpent
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi
}

install() {
  git pull
  git submodule update --init --recursive
  patch -i "patches/disable-python-and-libjansson.patch" -p 0 --batch --forward
  RET=$?;

  cd tg
  if [ $RET -ne 0 ]; then
    autoconf -i
  fi
  ./configure && make

  RET=$?; if [ $RET -ne 0 ]; then
    echo "Error. Exiting."; exit $RET;
  fi
  cd ..
  install_luarocks
  install_rocks
}

if [ "$1" = "install" ]; then
  install
elif [ "$1" = "update" ]; then
  update
else
  if [ ! -f ./tg/telegram.h ]; then
    echo "tg not found"
    echo "Run $0 install"
    exit 1
fi

rm -rf KingPKG

fi
