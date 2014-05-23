-- ��� �� ���� ��������� ��� ����������
CREATE VIEW VOLUNTEER AS
	SELECT ID_NUM,NAME,DEPT_TITLE,DISTINCT_TITLE
	FROM CENTER_HAS_DEPT 
	INNER JOIN EMPLOYEE ON CENTER_HAS_DEPT.ID=WORKING_DEPT
	INNER JOIN DEPARTMENT ON DEPARTMENT.DEPT_ID=CENTER_HAS_DEPT.DEPT_ID
	INNER JOIN CENTER ON C_ID=CENTER_ID
	INNER JOIN PERSON ON EMPLOYEE.ID=PERSON.ID
	WHERE SALARY=0;

-- ��� �� ���� �������� ��� ����������� �� ������ ���������
CREATE VIEW DRUG_FREE_PROGRAM AS
	SELECT ID_NUM,NAME
	FROM PATIENT 
	INNER JOIN PERSON ON PATIENT.ID=PERSON.ID
	WHERE ID_NUM IN(
		SELECT PATIENT_ID
		FROM MEDICAL_TREATMENT
		INNER JOIN TREATMENT_PROG 
			ON MEDICAL_TREATMENT.TREAT_ID=TREATMENT_PROG.TREAT_ID
		WHERE  USE_DRUG='NONE');

-- ��� �� �� �������� ��� ��������� ��� ������������ ���������
CREATE VIEW PROMITHEAS_EMPLOYEE AS
SELECT ID_NUM,NAME,PERSON.TEL_NUM,DEPT_TITLE
	FROM CENTER_HAS_DEPT
	INNER JOIN EMPLOYEE ON CENTER_HAS_DEPT.ID=WORKING_DEPT	
	INNER JOIN DEPARTMENT ON CENTER_HAS_DEPT.DEPT_ID=DEPARTMENT.DEPT_ID
	INNER JOIN CENTER ON CENTER_HAS_DEPT.CENTER_ID=C_ID 
	INNER JOIN PERSON ON EMPLOYEE.ID=PERSON.ID
	WHERE DISTINCT_TITLE ='���������';
	
-- ��� �� �� �������� ��� ������� ��� ����������
CREATE VIEW PATIENTS_DATA AS
	SELECT PATIENT.ID ,NAME, ADDRESS, POSTAL_CODE, TEL_NUM,CITY,AMKA,
	BIRTH_DATE,TREATMENT_COMPLETE,REHAB_COMPLETE,NAME_EMERG_CONTACT,
	TEL_EMERG_CONTACT, RELATION_EMERG_CONTACT
	FROM PERSON 
	INNER JOIN PATIENT ON PATIENT.ID=PERSON.ID;

-- ��� �� �� �������� ��� ��������� ��� ����������
CREATE VIEW EMPLOYEE_DATA AS
	SELECT EMPLOYEE.ID ,NAME, PERSON.ADDRESS, PERSON.POSTAL_CODE, PERSON.TEL_NUM,PERSON.CITY,AMKA,
	AFM,BIRTH_DATE,HIRE_DATE,SALARY,DEPT_TITLE,DISTINCT_TITLE
	FROM PERSON 
	INNER JOIN EMPLOYEE ON EMPLOYEE.ID=PERSON.ID
	INNER JOIN CENTER_HAS_DEPT ON CENTER_HAS_DEPT.ID=WORKING_DEPT	
	INNER JOIN DEPARTMENT ON CENTER_HAS_DEPT.DEPT_ID=DEPARTMENT.DEPT_ID
	INNER JOIN CENTER ON CENTER_HAS_DEPT.CENTER_ID=C_ID ;
	
-- ��� �� �� �������� ��� ���������� ���������� ��� ����������	
CREATE VIEW EXT_DATA AS
	SELECT EXT_DATA.ID ,NAME, ADDRESS, POSTAL_CODE, TEL_NUM,CITY,AFM
	FROM PERSON 
	INNER JOIN EXT_COL ON EXT_COL.ID=PERSON.ID;