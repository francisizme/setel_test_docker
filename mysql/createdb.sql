#
# Copy createdb.sql.example to createdb.sql
# then uncomment then set database name and username to create you need databases
#
# Example: .env MYSQL_USER=appuser and needed db name is myshop_db
#
#    CREATE DATABASE IF NOT EXISTS `myshop_db` ;
#    GRANT ALL ON `myshop_db`.* TO 'appuser'@'%' ;
#
#
# This sql script will auto run when the mysql container starts and the $DATA_PATH_HOST/mysql not found.
#
# if your $DATA_PATH_HOST/mysql exists and you do not want to delete it, you can run by manual execution:
#
#    docker-compose exec mysql bash
#    mysql -u root -p < /docker-entrypoint-initdb.d/createdb.sql
#

CREATE DATABASE IF NOT EXISTS `mcs_auth` COLLATE 'utf8_general_ci' ;
CREATE DATABASE IF NOT EXISTS `mcs_order` COLLATE 'utf8_general_ci' ;
CREATE DATABASE IF NOT EXISTS `mcs_payment` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `mcs_auth`.* TO 'nestjs'@'%' ;
GRANT ALL ON `mcs_order`.* TO 'nestjs'@'%' ;
GRANT ALL ON `mcs_payment`.* TO 'nestjs'@'%' ;
 
FLUSH PRIVILEGES ;
