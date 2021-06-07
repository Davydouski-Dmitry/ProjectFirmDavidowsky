USE ProjectFirmDavidowsky
GO
--6. �������� �������������
--6.1. ����������� ������ �� ����� SQL ��� �������� �������������, 
--�� ������ ������� �� �������, �������� ���������� ������� ���������, 
--����� ��������� ��� � ���� �������������.

-- VIEW (�������������)
CREATE VIEW RateSalary
AS 
SELECT JobTitle FROM Position
	WHERE Salary = 2500
GO

SELECT *FROM RateSalary
GO

--6.2. ����������� ������ �� ����� SQL ��� �������� ������������� �� ������ 
--�������������, ���������� � �. 6.1, � �������� � ���� ����������� ����. 
--��������, ��� ����� ��������� ���������� ���������� ���������� �������.

CREATE VIEW RateSalary5
AS 
SELECT Salary FROM Position
	WHERE JobTitle ='�������������' 
GO
SELECT (SELECT * FROM RateSalary5) + 500 AS RateWithPremia
GO