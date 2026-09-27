SET SERVEROUTPUT ON;

--------------------------------------------------
-- 1. EMPLOYEE SEARCH
--------------------------------------------------

CREATE OR REPLACE PROCEDURE search_emp
AS
    eid NUMBER;
    nm employee.emp_name%TYPE;
    con employee.contact%TYPE;
    em employee.email%TYPE;
    adr employee.address%TYPE;
    jd employee.join_date%TYPE;
    did employee.dept_id%TYPE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('================================');
    DBMS_OUTPUT.PUT_LINE('        EMPLOYEE SEARCH');
    DBMS_OUTPUT.PUT_LINE('================================');
    DBMS_OUTPUT.PUT_LINE('Enter Employee ID:');

    eid := &emp_id;

    SELECT emp_name, contact, email, address, join_date, dept_id
    INTO nm, con, em, adr, jd, did
    FROM employee
    WHERE emp_id = eid;

    DBMS_OUTPUT.PUT_LINE('Employee found successfully.');
    DBMS_OUTPUT.PUT_LINE('Employee ID : ' || eid);
    DBMS_OUTPUT.PUT_LINE('Name        : ' || nm);
    DBMS_OUTPUT.PUT_LINE('Contact     : ' || con);
    DBMS_OUTPUT.PUT_LINE('Email       : ' || em);
    DBMS_OUTPUT.PUT_LINE('Address     : ' || adr);
    DBMS_OUTPUT.PUT_LINE('Join Date   : ' || jd);
    DBMS_OUTPUT.PUT_LINE('Department  : ' || did);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
END;
/
--------------------------------------------------
-- 2. EMPLOYEE REGISTRATION
--------------------------------------------------

CREATE OR REPLACE PROCEDURE add_emp
AS
    nm employee.emp_name%TYPE;
    con employee.contact%TYPE;
    em employee.email%TYPE;
    adr employee.address%TYPE;
    did NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('================================');
    DBMS_OUTPUT.PUT_LINE('       EMPLOYEE REGISTRATION');
    DBMS_OUTPUT.PUT_LINE('================================');

    DBMS_OUTPUT.PUT_LINE('Employee ID will be generated automatically.');

    DBMS_OUTPUT.PUT_LINE('Enter Employee Name:');
    nm := '&emp_name';

    DBMS_OUTPUT.PUT_LINE('Enter Contact Number:');
    con := '&contact';

    DBMS_OUTPUT.PUT_LINE('Enter Email:');
    em := '&email';

    DBMS_OUTPUT.PUT_LINE('Enter Address:');
    adr := '&address';

    DBMS_OUTPUT.PUT_LINE('Enter Department ID:');
    did := &dept_id;

    INSERT INTO employee
    (emp_id, emp_name, contact, email, address, join_date, dept_id)
    VALUES
    (seqid_emp.NEXTVAL, nm, con, em, adr, SYSDATE, did);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Employee registered successfully.');
    DBMS_OUTPUT.PUT_LINE('Joining date set to current system date.');

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Registration failed.');
END;
/
--------------------------------------------------
-- 3. UPDATE EMPLOYEE DETAILS
--------------------------------------------------

CREATE OR REPLACE PROCEDURE update_emp
AS
    eid NUMBER;
    cnt NUMBER;
    con employee.contact%TYPE;
    em employee.email%TYPE;
    adr employee.address%TYPE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('================================');
    DBMS_OUTPUT.PUT_LINE('      UPDATE EMPLOYEE DETAILS');
    DBMS_OUTPUT.PUT_LINE('================================');

    DBMS_OUTPUT.PUT_LINE('Enter Employee ID:');
    eid := &emp_id;

    SELECT COUNT(*)
    INTO cnt
    FROM employee
    WHERE emp_id = eid;

    IF cnt = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee found successfully.');

        DBMS_OUTPUT.PUT_LINE('Enter New Contact Number:');
        con := '&contact';

        DBMS_OUTPUT.PUT_LINE('Enter New Email:');
        em := '&email';

        DBMS_OUTPUT.PUT_LINE('Enter New Address:');
        adr := '&address';

        UPDATE employee
        SET contact = con,
            email = em,
            address = adr
        WHERE emp_id = eid;

        COMMIT;

        DBMS_OUTPUT.PUT_LINE('Employee details updated successfully.');
    END IF;
END;
/
--------------------------------------------------
-- 4. DELETE EMPLOYEE
--------------------------------------------------

CREATE OR REPLACE PROCEDURE delete_emp
AS
    eid NUMBER;
    cnt NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('================================');
    DBMS_OUTPUT.PUT_LINE('         DELETE EMPLOYEE');
    DBMS_OUTPUT.PUT_LINE('================================');

    DBMS_OUTPUT.PUT_LINE('Enter Employee ID:');
    eid := &emp_id;

    SELECT COUNT(*)
    INTO cnt
    FROM employee
    WHERE emp_id = eid;

    IF cnt = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee found.');
        DBMS_OUTPUT.PUT_LINE('Deleting employee...');

        DELETE FROM employee
        WHERE emp_id = eid;

        COMMIT;

        DBMS_OUTPUT.PUT_LINE('Employee deleted successfully.');
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(
            'Employee cannot be deleted because related records exit.'
        );
END;
/
--------------------------------------------------
-- 5. EMPLOYEE CONTACT DIRECTORY
--------------------------------------------------

CREATE OR REPLACE PROCEDURE contact_list
AS
    cnt NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('================================');
    DBMS_OUTPUT.PUT_LINE('       EMPLOYEE CONTACT DIRECTORY');
    DBMS_OUTPUT.PUT_LINE('================================');

    SELECT COUNT(*)
    INTO cnt
    FROM employee;

    IF cnt = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No employee records found.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee ID  Name  Contact  Email');
        DBMS_OUTPUT.PUT_LINE('--------------------------------');

        FOR e IN
        (
            SELECT emp_id, emp_name, contact, email
            FROM employee
            ORDER BY emp_id
        )
        LOOP
            DBMS_OUTPUT.PUT_LINE(
                e.emp_id || '  ' ||
                e.emp_name || '  ' ||
                e.contact || '  ' ||
                e.email
            );
        END LOOP;

        DBMS_OUTPUT.PUT_LINE('--------------------------------');
        DBMS_OUTPUT.PUT_LINE('Contact directory displayed successfully.');
    END IF;
END;
/
