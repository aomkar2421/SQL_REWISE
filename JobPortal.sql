use jobportal;

delete from register;
delete from about_user;
delete from education;
delete from experiance;

ALTER TABLE about_user RENAME column about TO title;

-- create table education(id int auto_increment primary key,school varchar(100),  degree varchar(20),  year varchar(10), grade varchar(10),  description varchar(500),email varchar(100));

create table experiance(id int auto_increment primary key,company varchar(100),  location varchar(20),  year varchar(10), title varchar(100),  description varchar(500),email varchar(100));
create table jobs(id int auto_increment primary key,job_profile varchar(100),  company varchar(100),experiance varchar(100),salary varchar(100),openings varchar(100), location varchar(20), description varchar (1000), c_email varchar(100), contact_person varchar(100), contact_profile varchar(100), contact_phone varchar(100));

insert into jobs(job_profile, company, experiance, salary, openings, location , description , c_email, contact_person, contact_profile, contact_phone) values
('Sr. Java Developer', 'Accenture', '0-3 years', '4-6 LPA', '30', 'Pune', 'Hands-on experience in Core Java/J2EE, Restful web services, Multithreading, Springboot, SpringMVC, Microservices, data structures and ORM Frameworks (Hibernate/JPA)', 'accenture@gmail.com', 'XYZ ABC', 'HR Manager', '6754983465'),
('Associate software Developer', 'Infosys', '0-2 years', '4-5 LPA', '40', 'Pune', 'Experience in C# Dot Net Framework Applications development(Desktop and Web based Applications).Experience in SQL DB Complex Queries (Triggers, Cursors and Stored Procedure) with Application.', 'infosys@gmail.com', 'xxyyzz ABC', 'HR Manager', '9856545467'),
('Full Stack Developer', 'NilaApps', '3+ years', '6-8 LPA', '10', 'Chennai', 'Nila Apps is looking for Full Stack developers in Chennai with experience in PHP or Java platforms with Angular, Ionic front end to join our team in Chennai. As a member of our team', 'nilaappa@gmail.com', 'ABC LMN', 'HR', '9078657654'),
('Financial Analyst', 'Fineleap', '0-1 years', '3-6 LPA', '20', 'Pune', 'Experience with statistical analysis and financial forecasting Attention to detail and the ability to identify data patterns', 'fineleap@gmail.com', 'XYZ ABC', 'HR Manager', '8976785667');

create table applied_jobs(id int auto_increment primary key,email varchar(100), jid int(3));



delete from applied_jobs;

BACKUP DATABASE jobportal TO DISK = 'D:\backups\testDB.bak';

