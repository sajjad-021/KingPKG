
  declare -A logo
    seconds="0.019"
logo[-1]=" ::::::::::  :::::::      ::     ::  ::::::::  ::     ::  ::::::  :::::::: ::::::  "
logo[0]="     +:     :+    :+:    :+:+   +::+ +:       :+:+   +:+: +:   :+ +:       +:   :+ "
logo[1]="     :+     +:           :+ +:+:+ :+ :+       :+ +:+:+ :+ :+   +: :+       :+   +: "
logo[2]="     ++     :#           ++  +:+  ++ +++++#   ++  +:+  ++ #+++++  +++:+#   +++++#  "
logo[3]="     ++     +#  +#+#+    #+   +   #+ #+       #+   +   +# #+   +# #+       #+   +# "
logo[4]="     +#     #+     +#    +#       +# +#       +#       #+ +#    # +#       +#    #+"
logo[5]="     ##      #######     ##       ## ######## ##       ## ####### ######## ##    ##"
    printf "\033[32;4;600m\t"
    for i in ${!logo[@]}; do
        for x in `seq 0 ${#logo[$i]}`; do
            printf "${logo[$i]:$x:1}"
            sleep $seconds
        done
        printf "\n\t"
    done
printf "\n"

rm -rf ~/.telegram-cli/tabchi-*/data/photo
rm -rf ~/.telegram-cli/tabchi-*/data/animation
rm -rf ~/.telegram-cli/tabchi-*/data/audio
rm -rf ~/.telegram-cli/tabchi-*/data/document
rm -rf ~/.telegram-cli/tabchi-*/data/sticker
rm -rf ~/.telegram-cli/tabchi-*/data/temp
rm -rf ~/.telegram-cli/tabchi-*/data/video
rm -rf ~/.telegram-cli/tabchi-*/data/voice
rm -rf ~/.telegram-cli/tabchi-*/data/profile_photo
rm -rf ~/.telegram-cli/tabchi-*/data/thumb
wget security.ubuntu.com/ubuntu/pool/main/g/gcc-5/libstdc++6_5.4.0-6ubuntu1~16.04.4_amd64.deb
dpkg -i libstdc++6_5.4.0-6ubuntu1~16.04.4_amd64.deb
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
wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz
tar zxpf luarocks-2.2.2.tar.gz$ cd luarocks-2.2.2
./configure; sudo make bootstrap
 sudo luarocks install luasec
 sudo luarocks install luasocket
sudo luarocks install redis-lua
 sudo luarocks install lua-term
sudo luarocks install serpent
 sudo luarocks install dkjson
sudo luarocks install Lua-cURL
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
sudo apt-get install -y tor
sudo service tor start
sudo export http_proxy=socks5://127.0.0.1:9150 https_proxy=socks5://127.0.0.1:9150
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
   
      echo -e "\033[36;7;208m"
   echo -e " :::::::::::  ::::::::     ::::    ::::  :::::::::: ::::    ::::  :::::::::  :::::::::: ::::::::: "
   echo -e "     :+:     :+:    :+:    +:+:+: :+:+:+ :+:        +:+:+: :+:+:+ :+:    :+: :+:        :+:    :+:"
   echo -e "     +:+     +:+           +:+ +:+:+ +:+ +:+        +:+ +:+:+ +:+ +:+    +:+ +:+        +:+    +:+"
   echo -e "     +#+     :#:           +#+  +:+  +#+ +#++:++#   +#+  +:+  +#+ +#++:++#+  +#++:++#   +#++:++#: "
   echo -e "     +#+     +#+   +#+#    +#+       +#+ +#+        +#+       +#+ +#+    +#+ +#+        +#+    +#+"
   echo -e "     #+#     #+#    #+#    #+#       #+# #+#        #+#       #+# #+#    #+# #+#        #+#    #+#"
   echo -e "     ###      ########     ###       ### ########## ###       ### #########  ########## ###    ###"   
   echo -e " ------------------------------------------------------------------------------------------------ "
   echo -e "\033[32M;5;600m"
   echo -e "               __________ HEY, INSTALLATION COMPELETED SUCCESSFULLY! ____________                 "
   echo -e "                       -------** YOUR SYSTEM REDBOOT AGAIN **---------                            "
   
sudo reboot

exit
