echo "Setting up a simple HTTP server" 
mkdir /var/www/ && cd /var/www/ 
curl -o- https://raw.githubusercontent.com/nocquidant/userdata/master/index.js
node index.js
