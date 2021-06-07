USE[ProjectFirmDavidowsky]
GO

--7. Разработка триггеров, пользовательских функций и хранимых процедур

--7.1. Разработать хранимые процедуры для решения актуальных задач (не менее 3) 
--с различным числом и типами данных входных и выходных параметров. 
--Проверить правильность их выполнения с различными исходными данными.


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
SELECT @Name AS [Имя заказчика], @MoneyForProject AS [Количество денег вложеныых в проект]
GO		


SELECT *FROM Customer