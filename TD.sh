#!/bin/bash

function logo() {
    declare -A logo
    seconds="0.002"
logo[0]="  __           __  ___               __            "
logo[1]=" / /_  ___ _  /  |/  / ___   __ _   / /  ___   ____"
logo[2]="/ __/ / _ '/ / /|_/ / / -_) /  ' \ / _ \/ -_) / __/"
logo[3]="\__/  \_, / /_/  /_/  \__/ /_/_/_//_.__/\__/ /_/   "
logo[4]="     /___/                                         "
printf "\e[1;33m\t"
    for i in ${!logo[@]}; do
        for x in `seq 0 ${#logo[$i]}`; do
            printf "${logo[$i]:$x:1}"
            sleep $seconds
        done
        printf "\n\t"
    done
printf "\n"
}

lualibs=(
'luasec'
'redis-lua'
'fakeredis'
'serpent'
'--server=http://luarocks.org/dev openssl'
)

pkg=(
'git'
'wget'
'screen'
'tmux'
'libconfig9'
'libreadline-dev'
'libconfig-dev'
'libssl-dev'
'lua5.2'
'liblua5.2-dev'
'lua-socket'
'lua-sec'
'lua-expat'
'libevent-dev'
'libjansson'
'make'
'unzip'
'redis-server'
'autoconf'
'g++'
'libjansson-dev'
'libpython-dev'
'expat'
'libexpat1-dev'
'lua-lgi'
'software-properties-common'
'libnotify-dev'
'libconfig++'
'libconfig++-dev'
)

make_progress() {
  exe=`lua <<-EOF
    print(tonumber($1)/tonumber($2)*100)
EOF
`
  echo ${exe:0:4}
}

installation() {
  for i in $(seq 1 100); do  
    sleep 0.2
    if [ $i -eq 100 ]; then
        echo -e "XXX\n100\nDone!\nXXX"
    elif [ $(($i % 3)) -eq 0 ]; then
        let "phase = $i / 3"
        echo -e "XXX\n$i\n${pkg[phase]}\nXXX"
    else
        echo $i
    fi 
      sudo apt-get -y install git wget screen tmux libconfig9 libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev libjansson make unzip redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev lua-lgi software-properties-common libnotify-dev libconfig++ libconfig++-dev &>> .install.log &
done | whiptail --title 'TeleGram Advertising bot Install and Configuration' --gauge "${pkg[0]}" 6 60 0
    sleep 0.1
}

download_libs_lua() {
    local i
    for ((i=0;i<${#lualibs[@]};i++)); do
        printf "\r\33[2K"
        printf "\rtgMember: wait... [`make_progress $(($i+1)) ${#lualibs[@]}`%%] [$(($i+1))/${#lualibs[@]}] ${lualibs[$i]}"
        sudo luarocks install ${lualibs[$i]} &>> .install.log
    done
    sleep 0.2
    cd ..; rm -rf luarocks-2.4.2*
}

function tdbot() {
	wget https://valtman.name/files/telegram-bot-$(date +%y%m%d)-nightly-linux &>> .install.log
  mv telegram-bot-$(date +%y%m%d)-nightly-linux telegram-bot; chmod +x telegram-bot
}

function configure() {

    dir=$PWD
    
    	installation ${@}
      
     wget http://luarocks.org/releases/luarocks-2.4.2.tar.gz &>> .install.log
		  tar zxpf luarocks-2.4.2.tar.gz &>> .install.log
			cd luarocks-2.4.2
			./configure &>> .install.log
			    sudo make bootstrap &>> .install.log
			
      rm -rf luarocks*

      download_libs_lua
	    tdbot
}

function uppkg() {
   for ((i=0;i<101;i++)); do
        sudo apt-get -y install libstdc++6 gcc-4.9 g++-4.9 libconfig++9 &>> .install.log &
        printf "\rConfiguring... [%i%%]" $i
        sleep 0.02
        sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.9 &>> .install.log &
    done
}

function conf() {
dirbot=~/.telegram-bot/td-$1/td.lua
if [[ ! -f $dirbot ]]; then
echo "Ads_id = '$1'
serpent = require('serpent')
require('TD')
function tdbot_update_callback(data)
	Doing(data, Ads_id)
end" >> $dirbot
fi
}

function cfg() {
cfg=~/.telegram-bot/td-$1/config
if [[ ! -f $cfg ]]; then
echo 'default_profile = "td-'$1'";
td-'$1' = {
	config_directory = "td-'$1'";
	test = false;
	use_file_db = true;
	use_file_gc = true;
	file_readable_names = true;
	use_secret_chats = false;
	use_chat_info_db = true;
	use_message_db = true;
  	logname = "log.txt";
	verbosity = 0;
	lua_script = "td.lua";
};' >> $cfg
fi
}

function setsudo() {
echo -e "\033[38;5;27m\n"

 read -p 'put your user-Id :'  -e input
		redis-cli sadd tg:$1:sudo $input
}

function loginbot() {
logdr=~/.telegram-bot/td-$1/log.txt
if [ ! -f $logdr ]; then
echo -e "\033[38;5;208m\n\033[6;48m\n"

	read -p 'Phone number :'  -e input
  ./telegram-bot -p td-$1 -L log.txt --login --phone=$input
	
fi
}


function loginapi() {
logdr=~/.telegram-bot/td-$1/log.txt
if [ ! -f $logdr ]; then
echo -e "\033[38;5;208m\n\033[6;48m\n"

	read -p 'TOKEN :'  -e input
  ./telegram-bot -p td-$1 -L log.txt --login --bot=$input
	
fi
}

function botmod() {
 echo -e "\033[38;5;208mSelect your Robot Mod Configuration\033[1;208m"
    read -p "API [A/a] - CLI [C/c]"
  if [ "$REPLY" == "A" ] || [ "$REPLY" == "a" ]; then
			loginapi $1
    elif [ "$REPLY" == "C" ] || [ "$REPLY" == "c" ]; then
    	loginbot $1
  fi
}

runbt() {
drbt=~/.telegram-bot/td-$1
 	if [ ! -d $drbt ]; then
 		mkdir ~/.telegram-bot/td-$1
		setsudo $1
 		conf $1
		cfg $1
		botmod $1
		echo -e "\n\033[38;0;0m\n"
	fi
}

function autolaunch() {
COUNTER=0
  while [ $COUNTER -lt 9 ]; do
    sleep 1
	let COUNTER=COUNTER+1
       tmux kill-session -t TD-$1
            tmux new-session -d -s TD-$1 "./telegram-bot -d -c ~/.telegram-bot/td-$1/config"
        tmux detach -s TD-$1
	sleep 2	
	printf "\r\033[1;31m tdAds bot $COUNTER runing ..."
  done
printf "\n\e[38;0;0m"
}

if [ ! -f telegram-bot ]; then
	clear
	logo
	echo -e "\n\033[1;31mPlease Waite ... \033[0;00m\n"
  chmod 7777 TD; sudo apt-get update -y --force-yes &>> .install.log && sudo apt-get upgrade -y --force-yes &>> .install.log
 	configure ${3}
  sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test &>> .install.log
  sudo apt-get update -y --force-yes &>> .install.log && sudo apt-get upgrade -y --force-yes &>> .install.log
  uppkg
  echo -e "\n\033[1;32mInstall Complete\033[0;00m\n"
 	sudo service redis-server restart &>> .install.log
elif [ ! -d ~/.telegram-bot ]; then
	mkdir ~/.telegram-bot
elif [ "$1" = "upgrade" ]; then
	update
elif [[ "$1" =~ ^[0-9]+$ ]] ; then
    runbt $1
  while true; do
       tmux kill-session -t TD-$1
		    tmux new-session -s TD-$1 "./telegram-bot -d -c ~/.telegram-bot/td-$1/config"
        tmux detach -s TD-$1
  done
else
 	autolaunch ${9}
    logo
fi