# hrms-oracle-sql
Oracle SQL-based Human Resource Management System | MSBTE K-Scheme Micro-Project | Diploma IT, 3rd Sem | Government Polytechnic, Jalgaon
# Relational Human Resource Management System (RHRMS)

The system stores and manages information related to:

* Departments
* Employees
* Payroll
* Projects
* Project History
* Leave
* Attendance
* Medical Records
* Loans
* Job History

The database uses **primary keys and foreign keys** to establish relationships between tables and maintain **referential integrity**.

---

## 🛠️ Technology Used

| Technology                      | Purpose                                    |
| ------------------------------- | ------------------------------------------ |
| Oracle SQL                      | Database management                        |
| PL/SQL                          | Stored procedures and database programming |
| SQL Developer / Oracle SQL*Plus | Database development and execution         |
| GitHub                          | Project source-code management             |

---

# 🗂️ Database Structure

The HRMS database contains **10 tables**:

1. `department`
2. `employee`
3. `payroll`
4. `project`
5. `project_history`
6. `leave_table`
7. `attendance`
8. `medical_record`
9. `loan`
10. `job_history`

---

# 1. Department Table

### Table Name: `department`

The `department` table stores information about the different departments in the organization.

```sql
CREATE TABLE department (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(30) NOT NULL
);
```

### Columns

| Column      | Data Type    | Description                 |
| ----------- | ------------ | --------------------------- |
| `dept_id`   | NUMBER       | Unique ID of the department |
| `dept_name` | VARCHAR2(30) | Name of the department      |

### Constraints

* `dept_id` is the **Primary Key**.
* `dept_name` cannot contain NULL values.

The `dept_id` is referenced by the `employee` table.

---

# 2. Employee Table

### Table Name: `employee`

The `employee` table stores the basic information of employees working in the organization.

```sql
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
```

### Columns

| Column      | Data Type     | Description                     |
| ----------- | ------------- | ------------------------------- |
| `emp_id`    | NUMBER        | Unique employee ID              |
| `emp_name`  | VARCHAR2(50)  | Name of employee                |
| `contact`   | VARCHAR2(15)  | Employee contact number         |
| `email`     | VARCHAR2(50)  | Employee email address          |
| `address`   | VARCHAR2(100) | Employee address                |
| `join_date` | DATE          | Date employee joined            |
| `dept_id`   | NUMBER        | Department assigned to employee |

### Constraints

* `emp_id` is the **Primary Key**.
* `emp_name` cannot be NULL.
* `dept_id` is a **Foreign Key** referencing `department(dept_id)`.

### Relationship

**Department → Employee**

One department can have multiple employees.

---

# 3. Payroll Table

### Table Name: `payroll`

The `payroll` table stores salary and tax information of employees.

```sql
CREATE TABLE payroll (
    payroll_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    salary NUMBER,
    tax NUMBER,
    pay_date DATE,

    FOREIGN KEY (emp_id)
    REFERENCES employee(emp_id)
);
```

### Columns

| Column       | Data Type | Description                      |
| ------------ | --------- | -------------------------------- |
| `payroll_id` | NUMBER    | Unique payroll record ID         |
| `emp_id`     | NUMBER    | Employee associated with payroll |
| `salary`     | NUMBER    | Employee salary                  |
| `tax`        | NUMBER    | Tax amount                       |
| `pay_date`   | DATE      | Payroll payment date             |

### Constraints

* `payroll_id` is the **Primary Key**.
* `emp_id` is a **Foreign Key** referencing `employee(emp_id)`.

### Relationship

**Employee → Payroll**

An employee can have payroll records.

---

# 4. Project Table

### Table Name: `project`

The `project` table stores information about projects handled by the organization.

```sql
CREATE TABLE project (
    project_id NUMBER PRIMARY KEY,
    project_name VARCHAR2(50) NOT NULL
);
```

### Columns

| Column         | Data Type    | Description         |
| -------------- | ------------ | ------------------- |
| `project_id`   | NUMBER       | Unique project ID   |
| `project_name` | VARCHAR2(50) | Name of the project |

### Constraints

* `project_id` is the **Primary Key**.
* `project_name` cannot be NULL.

---

# 5. Project History Table

### Table Name: `project_history`

The `project_history` table records which employees are associated with projects and stores their project start and end dates.

```sql
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
```

### Columns

| Column       | Data Type | Description                   |
| ------------ | --------- | ----------------------------- |
| `history_id` | NUMBER    | Unique project-history record |
| `emp_id`     | NUMBER    | Employee assigned to project  |
| `project_id` | NUMBER    | Project assigned to employee  |
| `start_date` | DATE      | Project joining/start date    |
| `end_date`   | DATE      | Project completion/end date   |

### Constraints

* `history_id` is the **Primary Key**.
* `emp_id` references `employee(emp_id)`.
* `project_id` references `project(project_id)`.

### Relationships

```text
Employee
   ↓
Project History
   ↑
Project
```

This table connects employees and projects.

---

# 6. Leave Table

### Table Name: `leave_table`

The `leave_table` stores employee leave information.

```sql
CREATE TABLE leave_table (
    leave_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    leave_date DATE,
    reason VARCHAR2(50),
    status VARCHAR2(20),

    FOREIGN KEY (emp_id)
    REFERENCES employee(emp_id)
);
```

### Columns

| Column       | Data Type    | Description               |
| ------------ | ------------ | ------------------------- |
| `leave_id`   | NUMBER       | Unique leave record ID    |
| `emp_id`     | NUMBER       | Employee requesting leave |
| `leave_date` | DATE         | Date of leave             |
| `reason`     | VARCHAR2(50) | Reason for leave          |
| `status`     | VARCHAR2(20) | Leave status              |

### Constraints

* `leave_id` is the **Primary Key**.
* `emp_id` is a **Foreign Key** referencing `employee(emp_id)`.

### Purpose

This table helps HR maintain employee leave records and their status.

---

# 7. Attendance Table

### Table Name: `attendance`

The `attendance` table stores daily attendance information of employees.

```sql
CREATE TABLE attendance (
    att_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    att_date DATE,
    status VARCHAR2(10),

    FOREIGN KEY (emp_id)
    REFERENCES employee(emp_id)
);
```

### Columns

| Column     | Data Type    | Description                           |
| ---------- | ------------ | ------------------------------------- |
| `att_id`   | NUMBER       | Unique attendance record ID           |
| `emp_id`   | NUMBER       | Employee whose attendance is recorded |
| `att_date` | DATE         | Attendance date                       |
| `status`   | VARCHAR2(10) | Attendance status                     |

### Constraints

* `att_id` is the **Primary Key**.
* `emp_id` is a **Foreign Key** referencing `employee(emp_id)`.

### Purpose

The table can be used to record whether an employee is present, absent, or on leave.

---

# 8. Medical Record Table

### Table Name: `medical_record`

The `medical_record` table stores employee medical information maintained by the organization.

```sql
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
```

### Columns

| Column              | Data Type     | Description                     |
| ------------------- | ------------- | ------------------------------- |
| `medical_id`        | NUMBER        | Unique medical record ID        |
| `emp_id`            | NUMBER        | Employee associated with record |
| `blood_group`       | VARCHAR2(5)   | Employee blood group            |
| `medical_condition` | VARCHAR2(100) | Recorded medical condition      |
| `doctor_name_       |               |                                 |
