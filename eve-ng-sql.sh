#!/bin/bash

echo -ne "Checking MySQL... "
echo "\q" | mysql -u root --password=eve-ng &> /dev/null
if [ $? -ne 0 ]; then
        echo -e "\033[0;31mfailed\033[0m"
        exit 1
fi
echo -e "\033[0;32mdone\033[0m"

echo "\q" | mysql -u root --password=eve-ng guacdb &> /dev/null
if [ $? -ne 0 ]; then
        echo -ne "Creating database and users... "
        echo "CREATE DATABASE IF NOT EXISTS guacdb;" | mysql --host=localhost --user=root --password=eve-ng &> /dev/null
        if [ $? -ne 0 ]; then
                echo -e "\033[0;31mcreate failed\033[0m"
                exit 1
        fi
        echo "GRANT ALL ON guacdb.* TO 'guacuser'@'localhost' IDENTIFIED BY 'eve-ng';" | mysql --host=localhost --user=root --password=eve-ng &> /dev/null
        if [ $? -ne 0 ]; then
                echo -e "\033[0;31mgrant failed\033[0m"
                exit 1
        fi
        #cat /opt/unetlab/schema/guacamole-*.sql | mysql --host=localhost --user=root --password=eve-ng guacdb &> /dev/null
        cat /opt/unetlab/schema/guacamole-00*.sql | mysql --host=localhost --user=root --password=eve-ng guacdb &> /dev/null
        if [ $? -ne 0 ]; then
                echo -e "\033[0;31mimport failed\033[0m"
                exit 1
        fi
        echo "SET @salt = UNHEX(SHA2(UUID(), 256)); UPDATE guacamole_user SET password_salt = @salt, password_hash = UNHEX(SHA2(CONCAT('eve-ng', HEX(@salt)), 256)) WHERE username = 'guacadmin';" | mysql --user=root --password=eve-ng guacdb &> /dev/null
        if [ $? -ne 0 ]; then
                echo -e "\033[0;31msalt failed\033[0m"
                exit 1
        fi

        echo -e "\033[0;32mdone\033[0m"
fi

echo -ne "Checking if guacdb shema is up to date... "
echo "show create table guacamole_user ;" | mysql -u root --password=eve-ng guacdb | grep -q password_date &> /dev/null
if [ $? -ne 0 ]; then
        echo -ne "Updating guacdb database... "
        cat /opt/unetlab/schema/guacamole-update.sql | mysql --host=localhost --user=root --password=eve-ng guacdb &> /dev/null
        echo -e "\033[0;32mdone\033[0m"
fi
echo "show create table guacamole_user ;" | mysql -u root --password=eve-ng guacdb | grep -q full_name &> /dev/null
if [ $? -ne 0 ]; then
        echo -ne "Updating guacdb database... "
        cat /opt/unetlab/schema/upgrade-pre-0.9.13.sql | mysql --host=localhost --user=root --password=eve-ng guacdb &> /dev/null
        echo -e "\033[0;32mdone\033[0m"
fi


echo "show create table guacamole_connection;" | mysql -u root --password=eve-ng guacdb | grep -q connection_weight &> /dev/null
if [ $? -ne 0 ]; then
        echo -ne "Updating guacdb database up to 0.9.14 schema... "
        cat /opt/unetlab/schema/upgrade-pre-0.9.14.sql | mysql --host=localhost --user=root --password=eve-ng guacdb &> /dev/null
fi