How to setup a new slave:

1. Spin up a new ec 2 server (All in one AMI)

2. On the master database

3. ./create_snapshot.sh

4. mysql -u root

5. SHOW MASTER STATUS;

6. Remember the file and the position!

7. Open setup_slave_init.sql

8. Update MASTER_LOG_FILE and MASTER_LOG_POS if they have changed.

9. git add .

10. git commit -m "New snapshot and configure for new slave" 

11. git push origin master

12. On the new slave:

13. git clone https://github.com/miketsprague/mysql_setup_slave

14. ./setup_slave.sh [SLAVE NUMBER HERE]

15. Update config/shards.yml in the notify git to use the new slave number and address.

16. cap deploy!


Make sure that you increment the slave number each time!
