-- Create new college database
CREATE DATABASE college;

-- Change directory into new college database
\c college;

-- Create 4 Inital Tables

-- Students Table
CREATE TABLE students (
    stu_id int not null,
    stu_lname varchar(30),
    stu_fname varchar(30),
    student_phone varchar(30),
    primary key(stu_id)
);

-- Insert tuples into students table
INSERT INTO students VALUES(001,'Zhuang','Zinkxy','646-001-0101');
INSERT INTO students VALUES(002, 'Chen', 'David', '646-002-0202');
INSERT INTO students VALUES(003, 'Taylan', 'Yuki', '646-003-0103');
INSERT INTO students VALUES(004, 'Wang', 'Jackson', '646-004-0104');

-- Enroll Table 
-- (This table is used to breaked M:M between students table and courses table into two 1:M relationships.)
CREATE TABLE enroll (
    course_id int not null,
    stu_id int not null,
    enroll_grade varchar(30),
    primary key(course_id, stu_id)
);

-- Insert tuples into enroll table
INSERT INTO enroll VALUES(1115, 001, 'A');
INSERT INTO enroll VALUES(3115, 004, 'B');
INSERT INTO enroll VALUES(3130, 003, 'A+');
INSERT INTO enroll VALUES(1115, 002, 'A');


-- Courses Table
CREATE TABLE courses (
    course_id int not null,
    course_section varchar(30),
    course_time varchar(30),
    prof_id int,
    primary key(course_id)
);

--Insert tuples into courses table
INSERT INTO courses VALUES(1115, '1', 'TTh 2:30-3:45p.m.', 10);
INSERT INTO courses VALUES(1005, '2', 'MWF 9:00-10:50a.m.', 10);
INSERT INTO courses VALUES(3115, '1', 'TTh 2:30-3:45p.m.', 20);
INSERT INTO courses VALUES(3130, '1', 'TTh 2:30-3:45p.m.', 10);
INSERT INTO courses VALUES(4900, '1', 'TTh 2:30-3:45p.m.', 40);

-- Professors Table
CREATE TABLE professors (
    prof_id int not null,
    prof_lname varchar(30),
    prof_fname varchar(30),
    primary key(prof_id)
);

-- Insert tuples into professor table
INSERT INTO professors VALUES(10, 'Aril', 'Goldberg');
INSERT INTO professors VALUES(20, 'Wang', 'Alex');
INSERT INTO professors VALUES(30, 'Chuang', 'Sherry');
INSERT INTO professors VALUES(40, 'Smithson', 'Jason');