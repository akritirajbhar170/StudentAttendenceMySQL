Student Attendance Management System (MySQL)
By Akriti Rajbhar

Description
A simple Student Attendance Management System built using MySQL.
This project helps in storing student details, marking daily attendance, calculating attendance percentages, and identifying students with low attendance.

Features
Add student records
Mark student attendance (Present / Absent)
View attendance records
Calculate attendance percentage
Identify students with attendance below 75%

Tech Stack
MySQL

Project Structure
StudentAttendanceMySQL/
│
├── README.md
├── database_setup.sql
├── sample_data.sql
├── queries.sql
└── screenshots/

How to Run the Project
Open MySQL Workbench or any MySQL client.
Run database_setup.sql to create the database and tables.
Run sample_data.sql to insert sample student records.
Execute queries from queries.sql to mark attendance and generate reports.

Database Schema
Students Table
id – Student ID
name – Student name
course – Course name

Attendance Table
id – Attendance ID
student_id – References student ID
date – Attendance date
status – Present or Absent

Future Enhancements
Add subject-wise attendance
Add teacher login system
Generate attendance reports

Version
v1.0

Author
Akriti Rajbhar
