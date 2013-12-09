How to setup a new slave:

1. Spin up a new ec 2 server (All in one AMI)

2. On the master database

3. ./create_snapshot.sh

4. git add . ; git commit -m "Update snapshot"

5. mysql -u root

6. SHOW MASTER STATUS;

7. Remember the file and the position!

8. Open setup_slave_init.sql

9. Update MASTER_LOG_FILE and MASTER_LOG_POS if they have changed.

10. git add .

11. git commit -m "New snapshot and configure for new slave" 

12. git push origin master

13. On the new slave:

14. git clone https://github.com/miketsprague/mysql_setup_slave

15. ./setup_slave.sh [SLAVE NUMBER HERE]

16. Update config/shards.yml in the notify git to use the new slave number and address

17. cap deploy


Make sure that you increment the slave number each time!
