CREATE OR REPLACE PROCEDURE sp_payroll AS
    v_count NUMBER;
BEGIN

    SELECT COUNT(*)
    INTO v_count
    FROM payroll
    WHERE TRUNC(pay_date, 'MM') = TRUNC(SYSDATE, 'MM');

    IF v_count > 0 THEN
        DBMS_OUTPUT.PUT_LINE(
            'Payroll has already been generated for this month.'
        );
        RETURN;
    END IF;

    -- Information Technology
    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 101, 55000, 5500, 49500, SYSDATE);

    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 102, 42000, 4200, 37800, SYSDATE);

    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 103, 43000, 4300, 38700, SYSDATE);

    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 104, 41000, 4100, 36900, SYSDATE);

    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 105, 44000, 4400, 39600, SYSDATE);

    -- Finance
    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 106, 58000, 5800, 52200, SYSDATE);

    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 107, 40000, 4000, 36000, SYSDATE);

    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 108, 45000, 4500, 40500, SYSDATE);

    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 109, 48000, 4800, 43200, SYSDATE);

    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 110, 40000, 4000, 36000, SYSDATE);

    -- Human Resources
    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 111, 52000, 5200, 46800, SYSDATE);

    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 112, 38000, 3800, 34200, SYSDATE);

    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 113, 38000, 3800, 34200, SYSDATE);

    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 114, 40000, 4000, 36000, SYSDATE);

    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 115, 36000, 3600, 32400, SYSDATE);

    -- Administration
    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 116, 60000, 6000, 54000, SYSDATE);

    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 117, 35000, 3500, 31500, SYSDATE);

    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 118, 30000, 3000, 27000, SYSDATE);

    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 119, 28000, 2800, 25200, SYSDATE);

    INSERT INTO payroll
    VALUES (seqid_payroll.NEXTVAL, 120, 32000, 3200, 28800, SYSDATE);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(
        'Payroll generated successfully for ' ||
        TO_CHAR(SYSDATE, 'MM/YYYY')
    );

END sp_payroll;
/
