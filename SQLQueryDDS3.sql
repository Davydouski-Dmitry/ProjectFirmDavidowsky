USE[ProjectFirmDavidowsky]
GO
--5.1. Составить запрос на языке SQL, 
--отображающий все поля одной таблицы с отбором по одному условию и сортировкой.

SELECT T.TypeOfWork_ID,T.[Description],T.PriceWork,T.HourRate
	FROM TypeOfWork T
	ORDER BY T.HourRate

--5.2. Составить запрос на языке SQL, отображающий определенные поля одной таблицы 
--с отбором по сложному условию (состоящему из двух и более предикатов,
--связанных логической функцией) и сортировкой по двум полям.

SELECT T.TypeOfWork_ID,T.[Description],T.PriceWork,T.HourRate
	FROM TypeOfWork T
		WHERE T.PriceWork>80
		AND T.HourRate>1000
	ORDER BY T.HourRate, T.[Description]



--5.3. Составить запрос на языке SQL с выполнением групповой операции над данными.

SELECT *FROM Project

--группируем: сколько у каждого заказчика проектов
SELECT Customer_ID,COUNT(Customer_ID)
	AS ProjectCustomer FROM Project
		GROUP BY Customer_ID

--5.4. Составить запрос на языке SQL 
--с выполнением групповой операции над данными и агрегирующей функцией.

SELECT Customer_ID,COUNT(Customer_ID)
	AS ProjectCustomer FROM Project
	WHERE YEAR(EndData) = 2022
		GROUP BY Customer_ID
		

--5.5. Создать запрос с выполнением групповой операции над данными, выбранными из нескольких 
--таблиц, с отбором определенных групп и сортировкой в обратном порядке.

SELECT *FROM Employee
SELECT *FROM Position



SELECT *
	FROM Employee E CROSS JOIN Position P
		WHERE E.Position_ID = P.Position_ID
			ORDER BY Age DESC


--5.6. Разработать запрос на языке SQL, результирующая таблица которого соответствовала бы 
--по структуре записи дочерней таблице, но коды в полях внешнего ключа заменить 
--соответствующими им наименованиями из родительских таблиц. Выполнить сортировку.

SELECT E.Age,E.Position_ID,E.FullName,P.JobTitle
	FROM Employee E INNER JOIN Position P
		ON E.Position_ID = P.Position_ID
		ORDER BY E.Age
		
--5.7. Разработать запрос на языке SQL, результирующая таблица которого, должна содержать 
--все поля предыдущего запроса и добавить вычисляемое поле. Выполнить сортировку по нескольким полям.

SELECT E.Age,E.Position_ID,E.FullName,P.JobTitle,(Salary*3) [Зарплата за 3 года]
	FROM Employee E INNER JOIN Position P
		ON E.Position_ID = P.Position_ID
		ORDER BY E.Age,E.Position_ID

--5.8. Разработать запрос на языке SQL, выполняющий объединение нескольких таблиц.
SELECT *FROM Project
SELECT *FROM TypeOfWork

SELECT *
	FROM Project P INNER JOIN TypeOfWork T
		ON P.TypeOfWork_ID = T.TypeOfWork_ID
	

--5.9. Разработать запрос на языке SQL, выполняющий пересечение нескольких таблиц.

SELECT *FROM Design
SELECT *FROM Project

SELECT D.Project_ID new_a, D.Customer_ID new_b
FROM Design D
INTERSECT
SELECT P.Project_ID, P.Customer_ID
FROM Project P

--5.10. Разработать запрос на языке SQL с подзапросом с однострочным оператором сравнения.
SELECT *FROM Employee

SELECT FullName,Position_ID
FROM Employee
WHERE FullName =
(SELECT FullName 
FROM Employee
WHERE Position_ID = 888)


--5.11. Разработать запрос на языке SQL с подзапросом с многострочным оператором сравнения.
SELECT *FROM Project
SELECT *FROM TypeOfWork

--проверяем наиболее дорогие проекты, оплачены или нет.
--критерий: затраченые часы более 16000ч, или по цене самой дорогой работе
SELECT P.Project_ID, P.PaymentMark,P.TypeOfWork_ID
FROM Project P
WHERE P.TypeOfWork_ID IN
	(SELECT T.TypeOfWork_ID
		FROM TypeOfWork T
		WHERE T.HourRate>16000
		OR T.PriceWork=125);



