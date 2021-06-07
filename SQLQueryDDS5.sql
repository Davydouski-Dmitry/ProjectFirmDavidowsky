USE[ProjectFirmDavidowsky]
GO

--7. ���������� ���������, ���������������� ������� � �������� ��������

--7.1. ����������� �������� ��������� ��� ������� ���������� ����� (�� ����� 3) 
--� ��������� ������ � ������ ������ ������� � �������� ����������. 
--��������� ������������ �� ���������� � ���������� ��������� �������.


CREATE PROC Max_MoneyForProject
	@Name VARCHAR(20) OUTPUT,
	@MoneyForProject bigint OUTPUT
AS
SELECT	@Name = FullName,
		@MoneyForProject=AmountMoneyForProject
	FROM Customer
	SELECT MAX(AmountMoneyForProject)FROM Customer
	GO

DECLARE @Name VARCHAR(20)
DECLARE @MoneyForProject bigint
EXEC Max_MoneyForProject @Name OUTPUT, @MoneyForProject OUTPUT
SELECT @Name AS [��� ���������], @MoneyForProject AS [���������� ����� ��������� � ������]
GO		


SELECT *FROM Customer