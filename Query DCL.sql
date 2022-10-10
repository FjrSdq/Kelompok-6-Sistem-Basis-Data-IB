-- Query DCL -- 

# create user
CREATE USER 'admin'@'localhost' IDENTIFIED BY klp_6;
CREATE USER 'member'@'localhost' IDENTIFIED BY klpk_6;

# give privilege to admin and student
GRANT ALL PRIVILEGES ON klpk_6 TO 'admin'@'localhost'; 
GRANT SELECT ON klpk_6 TO 'member'@'localhost';

# remove privilege create and drop from admin
REVOKE CREATE, DROP ON klpk_6 FROM 'admin'@'localhost';
