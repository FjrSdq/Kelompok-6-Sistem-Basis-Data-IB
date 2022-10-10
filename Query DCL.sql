-- Query DCL -- 

# create user
CREATE USER 'kelompok6'@'localhost' IDENTIFIED BY 'klp06';


# give privilege to kelompok-6
GRANT ALL PRIVILEGES ON klpk_6 TO 'kelompok6'@'localhost'; 

# remove privilege create and drop from kelompok-6
REVOKE CREATE, DROP ON klpk_6 FROM 'kelompok6'@'localhost';