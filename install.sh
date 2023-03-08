#!/bin/bash

USER_HOME=$(getent passwd $USER | cut -d: -f6)

# SERVER:

SERVER_INSTALL_DIR=$(whiptail --title "NEMP Server installer" --inputbox "NEMP Server installation directory:" 10 60 "$USER_HOME/nemp" 3>&1 1>&2 2>&3)
if [ -z "$SERVER_INSTALL_DIR" ]; then
 whiptail --msgbox "Invalid installation directory." 10 60
 exit 1
fi
git clone https://github.com/libersoft-org/nemp-server.git
cp -r ./nemp-server/src/* $SERVER_INSTALL_DIR

cd $SERVER_INSTALL_DIR
npm install &
PID=$!
PERCENT=0

function update_progress {
 PERCENT=$(echo "scale=2; $PERCENT + 0.5" | bc)
 echo $PERCENT
}

whiptail --title "Installing npm packages" --gauge "Please wait..." 6 50 0 < <(
 while true; do
  if [[ $(ps -p $PID | grep $PID) ]]; then
   update_progress
   echo "$PERCENT Installing packages... "
  else
   echo "100 Installation complete."
   break
  fi
  sleep 0.1
 done
)

#NEMP SERVER - DEBIAN:
#apt -y install curl screen certbot whiptail
#curl -fsSL https://deb.nodesource.com/setup_19.x | bash -
#apt -y install nodejs
#npm i -g npm
#git clone https://github.com/libersoft-org/nemp-server.git
#cd nemp-server/src/
#npm i

#NEMP SERVER - CENTOS:
#dnf -y install curl screen certbot whiptail
#curl -fsSL https://rpm.nodesource.com/setup_19.x | bash -
#dnf -y install nodejs
#npm i -g npm
#git clone https://github.com/libersoft-org/nemp-server.git
#cd nemp-server/src/
#npm i

## NEMP SERVER CONFIGURATION

#WHIPTAIL - Would you like to create a new server settings file?
#node index.js --create-settings

#WHIPTAIL - Would you like to create a new server database file?
#node index.js --create-database

#WHIPTAIL - Would you like to create a new server admin account?
#node index.js --create-admin

#WHIPTAIL - Would you like to create a new server HTTPS certificate?
#./cert.sh

#WHIPTAIL - Would you like to add HTTPS server certificate renewal to crontab?
#crontab -e
#... and add this line at the end:
#0 12 * * * /usr/bin/certbot renew --quiet

#WHIPTAIL - NEMP Server installation complete.
#Now you can just start the server using:
#./start.sh
#If you need some additional configuration, just edit the **settings.json** file.

#You can attach the server screen using:
#screen -x nemp

#To detach screen press **CTRL+A** and then **CTRL+D**.

#Alternatively you can run server without using **screen** by:
#node index.js

#To stop the server just press **CTRL+C**.

#Add this domain record in your DNS for your NEMP server:
#- **A** record of your NEMP server, eg.: **A - nemp.domain.tld** targeting your NEMP server IP address

#Now for each domain you'd like to use with your NEMP server add this record:
#- **TXT** record that identifies your NEMP server, eg.: **domain.tld TXT nemp=nemp.domain.tld:443**

# CLIENTS:

CLIENTS_INSTALL_DIR=$(whiptail --title "NEMP Server installer" --inputbox "NEMP Client installation directory:" 10 60 "$USER_HOME/nemp/www" 3>&1 1>&2 2>&3)
if [ -z "$INSTALL_DIR" ]; then
 whiptail --msgbox "Invalid installation directory." 10 60
 exit 1
fi

CLIENTS=(\
 '1=("NEMP Web Admin" "admin" "libersoft-org" "nemp-admin-web")'\
 '2=("NEMP Web Client" "client" "libersoft-org" "nemp-client-web")'\
 '3=("WebSocket Developer Console" "console" "libersoft-org" "websocket-console")'\
)

whiptail \
--title "NEMP client software installer" \
--checklist "\nWhat client software would you like to install on NEMP web server?" 13 40 ${#CLIENTS[@]} \
1 "NEMP Web Admin" ON \
2 "NEMP Web Client" ON \
3 "WebSocket Developer Console" ON

whiptail --msgbox "Installation done. You can run the server using $SERVER_INSTALL_DIR/start.sh." 10 60

# TODO: Download each client and install it in the web root path
#git clone https://github.com/libersoft-org/nemp-admin-web.git
#mv ./nemp-admin-web/src/* $WEB_PATH/admin/
#rm -rf ./nemp-admin-web

# TODO: show progress bar of git clone & cp
#whiptail --gauge "Installing NEMP Web Admin" 6 60 0

# TODO: add update.sh script too
