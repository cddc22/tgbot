#!bin/sh

# put your commands to install extra shit below:
# Check your logs on heroku to see if you were sucessfull
git clone https://github.com/dissipator/gd-utils.git
#git clone https://github.com/cddc22/her.git
#cd her
cd gd-utils
nnpm config set unsafe-perm=true
npm install -g node-gyp 
npm config set python
npm i pm2 -g
    sed -i "s/bot_token/$BOT_TOKEN/g" ./gd-utils/config.js &&
    sed -i "s/your_tg_userid/$USER_ID/g" ./gd-utils/config.js &&
    sed -i "s/your_tg_username/$USER_NAME/g" ./gd-utils/config.js &&
    sed -i "s/DEFAULT_TARGET = ''/DEFAULT_TARGET = '$TEAM_DRIVE_ID'/g" ./gd-utils/config.js
wget --no-check-certificate -q $SA_ZIP_URL -o sa.zip
unzip -qq sa.zip -d /sa
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
