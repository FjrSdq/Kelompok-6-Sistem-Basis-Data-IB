CREATE DATABASE klpk_6 if NOT EXISTS ;
USE klpk_6;

CREATE TABLE students (
id INT UNSIGNED AUTO_INCREMENT,
student_name VARCHAR(255) NOT NULL,
address VARCHAR(255),
major VARCHAR(255) NOT NULL,
PRIMARY KEY(id));

CREATE TABLE course (
id INT UNSIGNED AUTO_INCREMENT,
course_name VARCHAR(255),
duration INT UNSIGNED,
`date` DATE,
`time` TIME,
PRIMARY KEY (id)
);

CREATE TABLE student_schedule(
student_id INT UNSIGNED,
course_id INT UNSIGNED,
FOREIGN KEY (student_id) REFERENCES students(id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY(course_id) REFERENCES course(id) ON UPDATE CASCADE ON DELETE CASCADE
);

SHOW TABLES;
DESC course;
DESC students;
DESC student_schedule;

Masukan data mahasiswa
INSERT INTO students VALUES
(1,"Hafiedz Hasmy Hamid","Jl.Dimanapun No.1","Sistem Informasi"),
(2,"Hasan Azyumardi Azra","Jl.Dimanapun No.2","Sistem Informasi"),
(3,"Muh Fajar Siddiq","Jl.Dimanapun No.3","Sistem Informasi"),
(4,"Liska Dewi Rombe","Jl.Dimanapun No.4","Sistem Informasi"),
(5,"Syarif Hidayat","Jl.Dimanapun No.5","Sistem Informasi"),
(6,"Muh. Khalilur Rachman G.","Jl.Dimanapun No.6","Sistem Informasi"),
(7,"Dhiyaa Unnisa","Jl.Dimanapun No.6","Sistem Informasi");

Masukkan data mata kuliah
INSERT INTO course VALUES
(1,"Pemrograman Web A",90,'2022-10-11','08:00:00'),
(2,"Pemrograman Web B",90,'2022-10-10','10:10:00'),
(3,"Sistem Basis Data A",150,'2022-10-10','10:10:00'),
(4,"Sistem Basis Data B",150,'2022-10-13','10:10:00'),
(5,"Struktur Data A",150,'2022-11-10','07:30:00'),
(6,"Struktur Data B",150,'2022-10-10','13:10:00');

Masukkan data jadwal mahasiswa
INSERT INTO student_schedule VALUES
(1,2),(1,6),(1,4),
(2,2),(2,6),(2,4),
(3,5),(3,1),(2,4),
(4,2),(4,6),(4,4),
(5,2),(5,5),(5,4),
(6,2),(6,6),(6,4),
(7,2),(7,6),(7,4);
