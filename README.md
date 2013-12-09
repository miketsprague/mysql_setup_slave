How to setup a new slave:
1. Spin up a new ec 2 server (All in one AMI)
2. On the master database
3. ./create_snapshot.sh
4. git add .
5. git push origin master
6. On the new slave:
7. git clone https://github.com/miketsprague/mysql_setup_slave
8. ./setup_slave.sh [SLAVE NUMBER HERE]
9. Update config/shards.yml in the notify git to use the new slave number and address
10. cap deploy


Make sure that you increment the slave number each time!
