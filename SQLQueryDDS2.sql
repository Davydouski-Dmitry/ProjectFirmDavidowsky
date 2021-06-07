USE[ProjectFirmDavidowsky]
GO
--4.1. ������� ����� ������� TestTable � ������� ������� �� ����� SQL SELECT � INTO� 
--(�������� ������� � ������� ������ ������� � ����� ������� ������� ��������������).

SELECT P.Position_ID, P.Responsibilities, P.Salary
	INTO EmployeName
	FROM Position P
	
SELECT *FROM EmployeName

--4.2. �������� ��������� ��������� �������, ������� � ��� ����� �������.

ALTER TABLE dbo.EmployeName ADD MonthWorks INT NULL
SELECT *FROM EmployeName

--4.3. ��������� ����� ���� � ������� ������� �� ���������� ������ �� ����� SQL.

UPDATE EmployeName
SET MonthWorks = 17

SELECT *FROM EmployeName

--4.4. �������� �������� � ���� � ������� ������� �� ����� SQL � ������ ������������� �������.

UPDATE EmployeName
SET MonthWorks = 29
WHERE MonthWorks = 17

SELECT *FROM EmployeName

--4.5. ������� ������ �� ����� SQL �� ���������� � ������� TestTable ����� ������� (�� ����� 3).

INSERT INTO EmployeName
VALUES
(155, '�������������',2700,5),
(155, '������',1700,4),
(155, '���������',700,3);

SELECT *FROM EmployeName

--4.6. ��������� ������ �� ����� SQL �� �������� ������� �� ��������� ������� 
--(������� �������� ������� ������� ��������������).

DELETE FROM EmployeName
WHERE MonthWorks = 29

SELECT *FROM EmployeName

--4.7. ������� ������� TestTable.

DROP TABLE EmployeName

--4.8. ���������� ������� ������ �� ����� ������������ �������. 
--�������������� ��������������� �������� ������ ����� ������������ � �������� ���������, 
--� ���������, ��������� ��� ��������� ��������� (CASCADE) �������� ������. 
--���������, ���� �� � ��������� ������ ��������� ������ � �������� �������. 
--�������� ������ ����� ��������� �������� � ������� CREATE TABLE ��� � ������� ALTER TABLE.

--������������ �������, �������� ��� ���������� ������ � �� ��������� �� ����������
SELECT *FROM Position
--�������� �������
SELECT *FROM Employee


--4.9. ������� ����� ��������� � �������� �������, 
--����� ����� ���� �� ��������� �������� ����� ������ �� ������������ �������.

--�������� ������� �������� � ���������� �� - ��������
DELETE
	FROM Position
		WHERE Position_ID = 777

SELECT *FROM Position
SELECT *FROM Employee

--4.10. ������� ��������� � ������ ������� ���, ����� ��� �������� ������ �� ������������ �������, 
--����������� �� ������������ �������� ��������� ������� �� �������� �������.