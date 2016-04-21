#!/usr/bin/env bash

# Making sure that the gunicorn server is already serving at localhost address

# Update and install packages
sudo apt-get update
sudo apt-get install python-pip python-dev nginx -y
echo "Packages installed..."

# cat file2 >> file1
# The >> operator appends the output to the named file or creates the named file if it does not exist.

# Remove any previously setup file of this name (to avoid any error)
sudo rm /etc/nginx/sites-enabled/<script name>
sudo rm /etc/nginx/sites-available/<script name>

# The directory must have the NGINX config file pre-made named server_config
sudo cat server_config >> /etc/nginx/sites-available/<script name>
echo " NGINX congiuration file created succesfully created"

# sudo cat server_config /etc/nginx/sites-available/myproject 
sudo ln -s /etc/nginx/sites-available/<script name> /etc/nginx/sites-enabled
sudo nginx -t #add a if else condition here
echo "Tests succesfull!"

#server reastarted
sudo service nginx restart
echo "Server re-started! Should be serving now at the address in the config file!"
#NOTE: This would only serve the site at http:// (not at https://)
