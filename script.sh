# START
echo "Setting up NodeJS Environment"
curl https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

touch /home/ec2-usr/.bashrc
echo 'export NVM_DIR="/home/ec2-user/.nvm"' >> /home/ec2-usr/.bashrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm' >> /home/ec2-user/.bashrc
 
# Dot source the files to ensure that variables are available within the current shell
. /home/ec2-user/.nvm/nvm.sh
. /home/ec2-user/.bashrc
 
# Install NVM, NPM, Node.JS
nvm alias default 12.14.1
nvm install 12.14.1
nvm use 12.14.1

echo "Setting up simple HTTP server" 
mkdir /var/www/ && cd /var/www/ 
curl -o- https://raw.githubusercontent.com/nocquidant/userdata/master/index.js
node index.js
