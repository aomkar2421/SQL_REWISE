create database lob;

use lob;
create table blobDemo(name varchar(50), image blob);
create table LongBlobDemo(name varchar(50), image longblob);

create table TextDemo(name varchar(50), file longblob);

delete from TextDemo where name="file2";


CREATE TABLE pdf_files (id INT AUTO_INCREMENT PRIMARY KEY,filename VARCHAR(255) NOT NULL,filepath VARCHAR(255) NOT NULL);

INSERT INTO pdf_files (filename, filepath) VALUES ('example.pdf', 'E:\img\doc2.pdf');





