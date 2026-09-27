-- =========================================
-- HRMS DATABASE
-- Oracle SQL
-- =========================================

-- 1. DEPARTMENT
CREATE TABLE department (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(30) NOT NULL
);


-- 2. EMPLOYEE
CREATE TABLE employee (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50) NOT NULL,
    contact VARCHAR2(15),
    email VARCHAR2(50),
    address VARCHAR2(100),
    join_date DATE,
    dept_id NUMBER,

    FOREIGN KEY (dept_id)
    REFERENCES department(dept_id)
);


-- 3. PAYROLL
CREATE TABLE payroll (
    payroll_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    salary NUMBER,
    tax NUMBER,
    pay_date DATE,

    FOREIGN KEY (emp_id)
    REFERENCES employee(emp_id)
);


-- 4. PROJECT
CREATE TABLE project (
    project_id NUMBER PRIMARY KEY,
    project_name VARCHAR2(50) NOT NULL
);


-- 5. PROJECT HISTORY
CREATE TABLE project_history (
    history_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    project_id NUMBER,
    start_date DATE,
    end_date DATE,

    FOREIGN KEY (emp_id)
    REFERENCES employee(emp_id),

    FOREIGN KEY (project_id)
    REFERENCES project(project_id)
);


-- 6. LEAVE
CREATE TABLE leave_table (
    leave_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    leave_date DATE,
    reason VARCHAR2(50),
    status VARCHAR2(20),

    FOREIGN KEY (emp_id)
    REFERENCES employee(emp_id)
);


-- 7. ATTENDANCE
CREATE TABLE attendance (
    att_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    att_date DATE,
    status VARCHAR2(10),

    FOREIGN KEY (emp_id)
    REFERENCES employee(emp_id)
);


-- 8. MEDICAL RECORD
CREATE TABLE medical_record (
    medical_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    blood_group VARCHAR2(5),
    medical_condition VARCHAR2(100),
    doctor_name VARCHAR2(50),
    medical_date DATE,

    FOREIGN KEY (emp_id)
    REFERENCES employee(emp_id)
);


-- 9. LOAN
CREATE TABLE loan (
    loan_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    loan_amount NUMBER,
    loan_date DATE,
    status VARCHAR2(20),

    FOREIGN KEY (emp_id)
    REFERENCES employee(emp_id)
);


-- 10. JOB HISTORY
CREATE TABLE job_history (
    job_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    job_title VARCHAR2(30),
    start_date DATE,
    end_date DATE,

    FOREIGN KEY (emp_id)
    REFERENCES employee(emp_id)
);





