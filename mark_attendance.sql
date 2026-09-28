CREATE OR REPLACE PROCEDURE sp_attendance AS
    v_count NUMBER;
BEGIN
    INSERT INTO attendance (att_id, emp_id, att_date, status)
    SELECT seqid_att.NEXTVAL, emp_id, TRUNC(SYSDATE), 'Present'
    FROM employee;
 
    v_count := SQL%ROWCOUNT;
    COMMIT;
 
    DBMS_OUTPUT.PUT_LINE(v_count || ' employee(s) marked Present for '
                         || TO_CHAR(TRUNC(SYSDATE), 'DD/MM/YYYY'));
END sp_attendance;
/
--------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE sp_mark_absent (
    p_id IN NUMBER
) AS
BEGIN
    UPDATE attendance
    SET status = 'Absent'
    WHERE att_id = p_id;
 
    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No attendance record found with att_id = ' || p_id);
    ELSE
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Attendance id ' || p_id || ' marked Absent.');
    END IF;
END sp_mark_absent;
/
