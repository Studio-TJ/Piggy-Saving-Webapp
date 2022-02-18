#!/bin/bash

# Install frontend
echo 'Install frontend to /var/www/piggysaving'
sudo rm -rf /var/www/piggysaving

npm install
npm run build
sudo mkdir -p /var/www/piggysaving
sudo cp -r dist/* /var/www/piggysaving
sudo chown -R www-data:www-data /var/www/piggysaving
