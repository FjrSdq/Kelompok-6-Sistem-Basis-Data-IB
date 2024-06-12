-- Query DCL -- 

# create user
CREATE USER 'Dosen'@'localhost' IDENTIFIED BY 'klp06';
CREATE USER 'Ketua'@'localhost' IDENTIFIED BY 'useyourmind';


# give privilege to kelompok-6
GRANT ALL PRIVILEGES ON klpk_6 TO 'Dosen'@'localhost'; 

#give privilege to ketua
GRANT ALL PRIVILEGES ON klpk_6 TO 'Ketua'@'localhost';

# show status
SHOW GRANTS FOR 'kelompok6'@'localhost';

# remove privilege create and drop from ketua
REVOKE CREATE, DROP, DELETE ON klpk_6 FROM 'Ketua'@'localhost';

#show status
SHOW GRANTS FOR 'Ketua'@'localhost';
