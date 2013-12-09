#! /bin/bash
echo "Creating notify DB"
mysql -u root < setup_slave_create_db.sql
echo "Inserting snapshot data"
mysql -u root notify < notify_snapshot.sql
echo "Creating the conf file"
sudo cp my_default.cnf my.cnf
echo "Updating the slave number"
sed -i -e "s/server-id=X/server-id=$1/g" my.cnf 
echo "Moving the config file"
sudo cp my.cnf /etc/mysql/my.cnf
echo "restarting mysql"
sudo service mysql restart
echo "Creating and starting the slave"
mysql -u root < setup_slave_init.sql 
echo "Cleaning Up..."
sudo rm my.cnf
