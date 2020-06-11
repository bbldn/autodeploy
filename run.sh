#!/bin/bash
unset GIT_DIR

echo 'Start deploy'
cd /var/www/html
echo 'Local changes will be hidden' 
git stash

git pull production production
echo 'The changes were pull'

#php /var/www/html/bin/console cache:clear
#echo 'The cache were cleaned'

chown -R www-data:www-data /var/www/html
chmod -R 775 /var/www/html
echo 'The permission were appled'

echo 'The end'
