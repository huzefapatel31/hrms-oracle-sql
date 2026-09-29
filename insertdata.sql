---------------------------------------------------------------------------------------------------------------------------------------
-- SEQUENCES
---------------------------------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE seqid_dept START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seqid_emp START WITH 101 INCREMENT BY 1;
CREATE SEQUENCE seqid_payroll START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seqid_project START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seqid_history START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seqid_leave START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seqid_att START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seqid_medical START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seqid_loan START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seqid_job START WITH 1 INCREMENT BY 1;
-----------------------------------------------------------------------------------------------------------------------------------
-- 1. DEPARTMENT
-----------------------------------------------------------------------------------------------------------------------------------
INSERT INTO department (dept_id, dept_name) VALUES (seqid_dept.NEXTVAL, 'Information Technology');
INSERT INTO department (dept_id, dept_name) VALUES (seqid_dept.NEXTVAL, 'Finance');
INSERT INTO department (dept_id, dept_name) VALUES (seqid_dept.NEXTVAL, 'Human Resources');
INSERT INTO department (dept_id, dept_name) VALUES (seqid_dept.NEXTVAL, 'Administration');

-----------------------------------------------------------------------------------------------------------------------------------
-- 2. EMPLOYEE
-----------------------------------------------------------------------------------------------------------------------------------

-- Department 1: Information Technology
-----------------------------------------------------------------------------------------------------------------------------------
INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Aarav Sharma', '9876500001', 'aarav.sharma@orbit.com',
 'Flat 101, Shree Residency, Nagpur, Maharashtra - 440015',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 1);

INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Priya Verma', '9876500002', 'priya.verma@orbit.com',
 'Flat 202, Green Heights, Pune, Maharashtra - 411045',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 1);

INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Rohan Patil', '9876500003', 'rohan.patil@orbit.com',
 'Flat 303, Andheri Heights, Mumbai, Maharashtra - 400069',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 1);

INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Sneha Joshi', '9876500004', 'sneha.joshi@orbit.com',
 'House 14, College Road, Nashik, Maharashtra - 422005',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 1);

INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Vikram Deshmukh', '9876500005', 'vikram.deshmukh@orbit.com',
 'Flat 405, Orange City Apartments, Nagpur, Maharashtra - 440015',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 1);

-----------------------------------------------------------------------------------------------------------------------------------
-- Department 2: Finance
-----------------------------------------------------------------------------------------------------------------------------------
INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Karan Shah', '9876500011', 'karan.shah@orbit.com',
 'Flat 111, Sunrise Residency, Pune, Maharashtra - 411014',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 2);

INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Pooja Nair', '9876500012', 'pooja.nair@orbit.com',
 'Flat 212, Palm Residency, Mumbai, Maharashtra - 400076',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 2);

INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Manish Yadav', '9876500013', 'manish.yadav@orbit.com',
 'House 33, Civil Lines, Nagpur, Maharashtra - 440001',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 2);

INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Riya Kapoor', '9876500014', 'riya.kapoor@orbit.com',
 'Flat 414, Metro Heights, New Delhi - 110075',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 2);

INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Suresh Pawar', '9876500015', 'suresh.pawar@orbit.com',
 'House 45, College Road, Nashik, Maharashtra - 422005',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 2);

-----------------------------------------------------------------------------------------------------------------------------------
-- Department 3: Human Resources
-----------------------------------------------------------------------------------------------------------------------------------
INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Deepak Sharma', '9876500021', 'deepak.sharma@orbit.com',
 'Flat 121, Civil Lines Residency, Nagpur, Maharashtra - 440001',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 3);

INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Isha Verma', '9876500022', 'isha.verma@orbit.com',
 'Flat 222, Aundh Residency, Pune, Maharashtra - 411007',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 3);

INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Mohit Patil', '9876500023', 'mohit.patil@orbit.com',
 'Flat 323, Thane Heights, Thane, Maharashtra - 400601',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 3);

INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Tanvi Joshi', '9876500024', 'tanvi.joshi@orbit.com',
 'House 18, College Road, Nashik, Maharashtra - 422005',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 3);

INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Akash More', '9876500025', 'akash.more@orbit.com',
 'Flat 525, Shivaji Nagar, Pune, Maharashtra - 411005',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 3);

-----------------------------------------------------------------------------------------------------------------------------------
-- Department 4: Administration
-----------------------------------------------------------------------------------------------------------------------------------
INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Nitin Kale', '9876500031', 'nitin.kale@orbit.com',
 'Flat 131, Model Colony, Nagpur, Maharashtra - 440033',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 4);

INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Snehal Patil', '9876500032', 'snehal.patil@orbit.com',
 'Flat 232, Kothrud, Pune, Maharashtra - 411038',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 4);

INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Ravi Bhosale', '9876500033', 'ravi.bhosale@orbit.com',
 'House 32, Deolali, Nashik, Maharashtra - 422401',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 4);

INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Komal Shinde', '9876500034', 'komal.shinde@orbit.com',
 'Flat 434, Andheri West, Mumbai, Maharashtra - 400058',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 4);

INSERT INTO employee (emp_id, emp_name, contact, email, address, join_date, dept_id)
VALUES (seqid_emp.NEXTVAL, 'Ganesh Wagh', '9876500035', 'ganesh.wagh@orbit.com',
 'House 55, Sector 10, Chandigarh - 160010',
 TO_DATE('01/07/2026','DD/MM/YYYY'), 4);
-----------------------------------------------------------------------------------------------------------------------------------------------------
-- 4. PROJECT
------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO project (project_id, project_name) VALUES (seqid_project.NEXTVAL, 'Edtech app design for GPJ');
-----------------------------------------------------------------------------------------------------------------------------------------------------
-- 5. PROJECT HISTORY (only IT department builds/works on projects)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO project_history (history_id, emp_id, project_id, start_date, end_date) VALUES (seqid_history.NEXTVAL, 101, 1, TO_DATE('01/10/2026','DD/MM/YYYY'), NULL);
INSERT INTO project_history (history_id, emp_id, project_id, start_date, end_date) VALUES (seqid_history.NEXTVAL, 102, 1, TO_DATE('02/10/2026','DD/MM/YYYY'), NULL);
INSERT INTO project_history (history_id, emp_id, project_id, start_date, end_date) VALUES (seqid_history.NEXTVAL, 103, 1, TO_DATE('03/10/2026','DD/MM/YYYY'), NULL);
INSERT INTO project_history (history_id, emp_id, project_id, start_date, end_date) VALUES (seqid_history.NEXTVAL, 104, 1, TO_DATE('04/10/2026','DD/MM/YYYY'), NULL);
INSERT INTO project_history (history_id, emp_id, project_id, start_date, end_date) VALUES (seqid_history.NEXTVAL, 105, 1, TO_DATE('05/10/2026','DD/MM/YYYY'), NULL);
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 6. LEAVE (one row per employee)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 101, TO_DATE('12/09/2026','DD/MM/YYYY'), 'Sick Leave', 'Approved');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 102, TO_DATE('13/09/2026','DD/MM/YYYY'), 'Personal', 'Approved');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 103, TO_DATE('14/09/2026','DD/MM/YYYY'), 'Casual Leave', 'Pending');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 104, TO_DATE('15/09/2026','DD/MM/YYYY'), 'Sick Leave', 'Approved');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 105, TO_DATE('16/09/2026','DD/MM/YYYY'), 'Family Function', 'Rejected');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 106, TO_DATE('17/09/2026','DD/MM/YYYY'), 'Personal', 'Approved');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 107, TO_DATE('18/09/2026','DD/MM/YYYY'), 'Sick Leave', 'Approved');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 108, TO_DATE('19/09/2026','DD/MM/YYYY'), 'Casual Leave', 'Pending');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 109, TO_DATE('20/09/2026','DD/MM/YYYY'), 'Personal', 'Approved');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 110, TO_DATE('21/09/2026','DD/MM/YYYY'), 'Sick Leave', 'Rejected');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 111, TO_DATE('22/09/2026','DD/MM/YYYY'), 'Family Function', 'Approved');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 112, TO_DATE('23/09/2026','DD/MM/YYYY'), 'Casual Leave', 'Approved');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 113, TO_DATE('24/09/2026','DD/MM/YYYY'), 'Personal', 'Pending');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 114, TO_DATE('25/09/2026','DD/MM/YYYY'), 'Sick Leave', 'Approved');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 115, TO_DATE('26/09/2026','DD/MM/YYYY'), 'Casual Leave', 'Approved');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 116, TO_DATE('27/09/2026','DD/MM/YYYY'), 'Sick Leave', 'Approved');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 117, TO_DATE('28/09/2026','DD/MM/YYYY'), 'Personal', 'Pending');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 118, TO_DATE('29/09/2026','DD/MM/YYYY'), 'Casual Leave', 'Approved');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 119, TO_DATE('30/09/2026','DD/MM/YYYY'), 'Family Function', 'Rejected');
INSERT INTO leave_table (leave_id, emp_id, leave_date, reason, status) VALUES (seqid_leave.NEXTVAL, 120, TO_DATE('30/09/2026','DD/MM/YYYY'), 'Sick Leave', 'Approved');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 8. MEDICAL RECORD (one row per employee)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 101, 'B+', 'None', 'Dr. Kulkarni', TO_DATE('05/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 102, 'O+', 'Allergy', 'Dr. Patil', TO_DATE('06/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 103, 'A+', 'None', 'Dr. Kulkarni', TO_DATE('07/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 104, 'AB+', 'Asthma', 'Dr. Mehta', TO_DATE('08/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 105, 'B-', 'None', 'Dr. Patil', TO_DATE('09/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 106, 'O-', 'None', 'Dr. Kulkarni', TO_DATE('10/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 107, 'A-', 'Diabetes', 'Dr. Mehta', TO_DATE('11/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 108, 'B+', 'None', 'Dr. Patil', TO_DATE('12/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 109, 'AB-', 'None', 'Dr. Kulkarni', TO_DATE('13/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 110, 'O+', 'Allergy', 'Dr. Mehta', TO_DATE('14/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 111, 'B+', 'None', 'Dr. Patil', TO_DATE('15/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 112, 'A+', 'None', 'Dr. Kulkarni', TO_DATE('16/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 113, 'O-', 'Asthma', 'Dr. Mehta', TO_DATE('17/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 114, 'AB+', 'None', 'Dr. Patil', TO_DATE('18/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 115, 'B-', 'None', 'Dr. Kulkarni', TO_DATE('19/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 116, 'O+', 'None', 'Dr. Mehta', TO_DATE('20/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 117, 'A+', 'Allergy', 'Dr. Patil', TO_DATE('21/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 118, 'B+', 'None', 'Dr. Kulkarni', TO_DATE('22/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 119, 'AB+', 'None', 'Dr. Mehta', TO_DATE('23/09/2026','DD/MM/YYYY'));
INSERT INTO medical_record (medical_id, emp_id, blood_group, medical_condition, doctor_name, medical_date) VALUES (seqid_medical.NEXTVAL, 120, 'O-', 'None', 'Dr. Patil', TO_DATE('24/09/2026','DD/MM/YYYY'));
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 9. LOAN (a subset of employees)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO loan (loan_id, emp_id, loan_amount, loan_date, status) VALUES (seqid_loan.NEXTVAL, 101, 20000, TO_DATE('10/09/2026','DD/MM/YYYY'), 'Approved');
INSERT INTO loan (loan_id, emp_id, loan_amount, loan_date, status) VALUES (seqid_loan.NEXTVAL, 103, 15000, TO_DATE('11/09/2026','DD/MM/YYYY'), 'Pending');
INSERT INTO loan (loan_id, emp_id, loan_amount, loan_date, status) VALUES (seqid_loan.NEXTVAL, 106, 25000, TO_DATE('12/09/2026','DD/MM/YYYY'), 'Approved');
INSERT INTO loan (loan_id, emp_id, loan_amount, loan_date, status) VALUES (seqid_loan.NEXTVAL, 109, 10000, TO_DATE('13/09/2026','DD/MM/YYYY'), 'Rejected');
INSERT INTO loan (loan_id, emp_id, loan_amount, loan_date, status) VALUES (seqid_loan.NEXTVAL, 112, 18000, TO_DATE('14/09/2026','DD/MM/YYYY'), 'Approved');
INSERT INTO loan (loan_id, emp_id, loan_amount, loan_date, status) VALUES (seqid_loan.NEXTVAL, 117, 12000, TO_DATE('15/09/2026','DD/MM/YYYY'), 'Approved');
---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 10. JOB HISTORY
---------------------------------------------------------------------------------------------------------------------------------------
-- Department 1: Information Technology
------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 101, 'Software Developer',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 102, 'Web Developer',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 103, 'System Analyst',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 104, 'Database Developer',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 105, 'Network Engineer',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

---------------------------------------------------------------
-- Department 2: Finance
---------------------------------------------------------
INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 106, 'Financial Analyst',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 107, 'Accountant',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 108, 'Finance Executive',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 109, 'Accounts Manager',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 110, 'Finance Officer',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

--------------------------------------------------------------------------
-- Department 3: Human Resources
---------------------------------------------------------------------------
INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 111, 'HR Executive',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 112, 'Recruitment Executive',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 113, 'HR Coordinator',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 114, 'Training Officer',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 115, 'HR Manager',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

---------------------------------------------------------------------------------------
-- Department 4: Administration
---------------------------------------------------------------------------------------
INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 116, 'Administrator',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 117, 'Office Executive',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 118, 'Admin Officer',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 119, 'Office Manager',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);

INSERT INTO job_history
(job_id, emp_id, job_title, start_date, end_date)
VALUES
(seqid_job.NEXTVAL, 120, 'Administrative Officer',
 TO_DATE('01/08/2026','DD/MM/YYYY'), NULL);
-----------------------------------------------------------------------------------------------------------------------------------------------
COMMIT;
