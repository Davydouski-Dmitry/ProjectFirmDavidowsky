USE ProjectFirmDavidowsky
GO
--6. Создание представлений
--6.1. Разработать запрос на языке SQL для создания представления, 
--на основе запроса на выборку, имеющего достаточно сложную структуру, 
--чтобы сохранить его в виде представления.

-- VIEW (Представление)
CREATE VIEW RateSalary
AS 
SELECT JobTitle FROM Position
	WHERE Salary = 2500
GO

SELECT *FROM RateSalary
GO

--6.2. Разработать запрос на языке SQL для создания представления на основе 
--представления, созданного в п. 6.1, и добавить в него вычисляемое поле. 
--Показать, как можно выполнить сортировку результата выполнения запроса.

CREATE VIEW RateSalary5
AS 
SELECT Salary FROM Position
	WHERE JobTitle ='проектировщик' 
GO
SELECT (SELECT * FROM RateSalary5) + 500 AS RateWithPremia
GO