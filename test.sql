-- Create new student database
CREATE DATABASE studentdb;

-- Change directory into new student database
\c studentdb;

-- Create 4 Inital Tables

-- Student Table
CREATE TABLE [IF NOT EXISTS] students (
    id int primary key,
    firstName varchar(30),
    lastName varchar(30)
);

CREATE TABLE [IF NOT EXISTS] students_grades (
    id int primary key,

);

CREATE TABLE [IF NOT EXISTS] students_extracurr (
    id int primary key,
    football boolean,
    music boolean,
    theatre boolean,
    chess boolean,

);

CREATE TABLE [IF NOT EXISTS] students_classes (


);