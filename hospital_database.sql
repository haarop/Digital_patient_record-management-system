CREATE DATABASE HospitalDB;

USE HospitalDB;

CREATE TABLE Patients (

PatientID INT AUTO_INCREMENT PRIMARY KEY,

FullName VARCHAR(100),

Gender VARCHAR(20),

DateOfBirth DATE,

Phone VARCHAR(20),

Address TEXT

);

CREATE TABLE Doctors (

DoctorID INT AUTO_INCREMENT PRIMARY KEY,

DoctorName VARCHAR(100),

Specialization VARCHAR(100),

Phone VARCHAR(20),

Email VARCHAR(100)

);

CREATE TABLE Appointments (

AppointmentID INT AUTO_INCREMENT PRIMARY KEY,

PatientID INT,

DoctorID INT,

AppointmentDate DATE,

Status VARCHAR(50),

FOREIGN KEY (PatientID)
REFERENCES Patients(PatientID),

FOREIGN KEY (DoctorID)
REFERENCES Doctors(DoctorID)

);

CREATE TABLE MedicalRecords (

RecordID INT AUTO_INCREMENT PRIMARY KEY,

AppointmentID INT,

Diagnosis TEXT,

Treatment TEXT,

Notes TEXT,

FOREIGN KEY (AppointmentID)
REFERENCES Appointments(AppointmentID)

);

CREATE TABLE Roles (

RoleID INT AUTO_INCREMENT PRIMARY KEY,

RoleName VARCHAR(50)

);

CREATE TABLE Users (

UserID INT AUTO_INCREMENT PRIMARY KEY,

FullName VARCHAR(100),

Email VARCHAR(100),

Password VARCHAR(255),

RoleID INT,

FOREIGN KEY (RoleID)
REFERENCES Roles(RoleID)

);
