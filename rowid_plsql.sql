DECLARE
  V_ROW_ID UROWID;
BEGIN
--PICK a random row and save its rowid.
  SELECT ROWID R_ID INTO V_ROW_ID FROM EMPLOYEES_VT WHERE ROWNUM <=1;
  
  --update using ROWID
  UPDATE EMPLOYEES_VT SET EMP_SAL = EMP_SAL * 1.12 WHERE ROWID = V_ROW_ID ;
  --COMMIT;
END;
/

select * from EMPLOYEES_VT;