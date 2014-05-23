-- ������� ���������� ������ ���� ������������ ���� ��� �������� ���� ������ 
-- ���� ����� �������������. �� � ������� ��� ������� ���������� � ���������
-- ���������.

CREATE TRIGGER CHECK_AVAIL_POS ON MEDICAL_TREATMENT
	AFTER INSERT AS
	DECLARE @TOTAL INT, @TR_ID INT;
	SELECT @TR_ID=TREAT_ID FROM INSERTED;
	SELECT @TOTAL=COUNT(*) FROM MEDICAL_TREATMENT WHERE TREAT_ID=@TR_ID;
	IF @TOTAL> (SELECT AVAIL_POSITIONS FROM TREATMENT_PROG WHERE TREAT_ID=@TR_ID)
	BEGIN 
		RAISERROR('��� ��A����� �E���� ��� ��� ������ ��� ������ ��� ���������',16,1 );
		ROLLBACK;
	END;
	
-- ������� �� ���� ������� ���� ����������� ������ ��������� ����������� ����
-- �� ��������� ��� �� ������ ��������� �����������. � ������� ������� ��� �� 
-- ������ ����� TREATMENT_COMPLETE ��� ������.

CREATE TRIGGER CHECK_PROG_COMPL ON PATIENT_REHAB
	AFTER INSERT AS 
	DECLARE @CHK_COMP BIT, @PAT_ID INT
	SELECT @PAT_ID=PATIENT_ID FROM INSERTED;
	SELECT @CHK_COMP=TREATMENT_COMPLETE FROM PATIENT WHERE ID_NUM=@PAT_ID;
	IF (CAST(@CHK_COMP AS INT)=0)
		BEGIN 
		RAISERROR('� ������� ��� ���� ����������� ������ ��������� �����������',16,1 );
		ROLLBACK;
	END;



	