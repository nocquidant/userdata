echo "Setting up a simple HTTP server" 
mkdir -p /var/www/ 
usermod -a -G app ec2-user
chown -R ec2-user:app /var/www
chmod 2775 /var/www
cd /var/www/ 
curl -o- https://raw.githubusercontent.com/nocquidant/userdata/master/index.js
node index.js
