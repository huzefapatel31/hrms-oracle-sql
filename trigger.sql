CREATE TABLE employee_audit (
    audit_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    action_type VARCHAR2(10),
    action_date DATE,
    username VARCHAR2(30)
);
------------------------------------------------
CREATE SEQUENCE seqid_audit
START WITH 1
INCREMENT BY 1;
------------------------------------------------
CREATE OR REPLACE TRIGGER trg_employee_audit
AFTER INSERT OR UPDATE OR DELETE ON employee
FOR EACH ROW
BEGIN

    IF INSERTING THEN
        INSERT INTO employee_audit
        VALUES (
            seqid_audit.NEXTVAL,
            :NEW.emp_id,
            'INSERT',
            SYSDATE,
            USER
        );

    ELSIF UPDATING THEN
        INSERT INTO employee_audit
        VALUES (
            seqid_audit.NEXTVAL,
            :NEW.emp_id,
            'UPDATE',
            SYSDATE,
            USER
        );

    ELSIF DELETING THEN
        INSERT INTO employee_audit
        VALUES (
            seqid_audit.NEXTVAL,
            :OLD.emp_id,
            'DELETE',
            SYSDATE,
            USER
        );
    END IF;

END;
/
------------------------------------------------------------------------------------
