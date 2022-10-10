-- Query DCL -- 

# create user
CREATE USER 'kelompok6'@'localhost' IDENTIFIED BY 'klp06';
CREATE USER 'admin'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'member'@'localhost' IDENTIFIED BY '5555';


# give privilege to kelompok-6
GRANT ALL PRIVILEGES ON klpk_6 TO 'kelompok6'@'localhost'; 

#give privilege to admin and member
GRANT ALL PRIVILEGES ON klpk_6 TO 'member'@'localhost';
GRANT ALL PRIVILEGES ON klpk_6 TO 'admin'@'localhost';

# show status
SHOW GRANTS FOR 'kelompok6'@'localhost';

# remove privilege create and drop from kelompok-6
REVOKE CREATE, DROP ON klpk_6 FROM 'member'@'localhost';
REVOKE CREATE, DROP ON klpk_6 FROM 'admin'@'localhost';

#show status
SHOW GRANTS FOR 'admin'@'localhost';
SHOW GRANTS FOR 'member'@'localhost';