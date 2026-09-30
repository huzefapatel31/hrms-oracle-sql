--------------------------------------------------
-- 1. EMPLOYEE SEARCH
--------------------------------------------------
CREATE OR REPLACE PROCEDURE search_emp(p_emp_id IN NUMBER)
AS
    nm  employee.emp_name%TYPE;
    con employee.contact%TYPE;
    em  employee.email%TYPE;
    adr employee.address%TYPE;
    jd  employee.join_date%TYPE;
    did employee.dept_id%TYPE;
BEGIN
    SELECT emp_name, contact, email, address, join_date, dept_id
    INTO nm, con, em, adr, jd, did
    FROM employee
    WHERE emp_id = p_emp_id;

    DBMS_OUTPUT.PUT_LINE('Employee ID : ' || p_emp_id);
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
CREATE OR REPLACE PROCEDURE add_emp(
    p_emp_name IN employee.emp_name%TYPE,
    p_contact  IN employee.contact%TYPE,
    p_email    IN employee.email%TYPE,
    p_address  IN employee.address%TYPE,
    p_dept_id  IN NUMBER
)
AS
BEGIN
    INSERT INTO employee
    (emp_id, emp_name, contact, email, address, join_date, dept_id)
    VALUES
    (seqid_emp.NEXTVAL, p_emp_name, p_contact, p_email, p_address, SYSDATE, p_dept_id);

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Employee registered successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Registration failed: ' || SQLERRM);
END;
/

--------------------------------------------------
-- 3. UPDATE EMPLOYEE DETAILS
--------------------------------------------------
CREATE OR REPLACE PROCEDURE update_emp(
    p_emp_id  IN NUMBER,
    p_contact IN employee.contact%TYPE,
    p_email   IN employee.email%TYPE,
    p_address IN employee.address%TYPE
)
AS
    cnt NUMBER;
BEGIN
    SELECT COUNT(*) INTO cnt FROM employee WHERE emp_id = p_emp_id;

    IF cnt = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
    ELSE
        UPDATE employee
        SET contact = p_contact, email = p_email, address = p_address
        WHERE emp_id = p_emp_id;

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Employee details updated successfully.');
    END IF;
END;
/

--------------------------------------------------
-- 4. DELETE EMPLOYEE
--------------------------------------------------
CREATE OR REPLACE PROCEDURE delete_emp(p_emp_id IN NUMBER)
AS
    cnt NUMBER;
BEGIN
    SELECT COUNT(*) INTO cnt FROM employee WHERE emp_id = p_emp_id;

    IF cnt = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
    ELSE
        DELETE FROM employee WHERE emp_id = p_emp_id;
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Employee deleted successfully.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Employee cannot be deleted because related records exist.');
END;
/
--------------------------------------------------
-- 5. EMPLOYEE CONTACT DIRECTORY
--------------------------------------------------
CREATE OR REPLACE PROCEDURE contact_list
AS
    cnt NUMBER;
BEGIN
    SELECT COUNT(*) INTO cnt FROM employee;

    IF cnt = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No employee records found.');
    ELSE

        DBMS_OUTPUT.PUT_LINE(
            '--------------------------------------------------------------------------'
        );

        DBMS_OUTPUT.PUT_LINE(
            RPAD('ID', 8) ||
            RPAD('NAME', 25) ||
            RPAD('CONTACT', 15) ||
            RPAD('EMAIL', 30)
        );

        DBMS_OUTPUT.PUT_LINE(
            '--------------------------------------------------------------------------'
        );

        FOR e IN (
            SELECT emp_id, emp_name, contact, email
            FROM employee
            ORDER BY emp_id
        )
        LOOP
            DBMS_OUTPUT.PUT_LINE(
                RPAD(e.emp_id, 8) ||
                RPAD(e.emp_name, 25) ||
                RPAD(e.contact, 15) ||
                RPAD(e.email, 30)
            );
        END LOOP;

        DBMS_OUTPUT.PUT_LINE(
            '--------------------------------------------------------------------------'
        );

    END IF;
END;
/
