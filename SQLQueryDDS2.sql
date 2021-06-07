USE[ProjectFirmDavidowsky]
GO
--4.1. —оздать новую таблицу TestTable с помощью запроса на €зыке SQL SELECT Е INTOЕ 
--(исходную таблицу и условие отбора записей в новую таблицу выбрать самосто€тельно).

SELECT P.Position_ID, P.Responsibilities, P.Salary
	INTO EmployeName
	FROM Position P
	
SELECT *FROM EmployeName

--4.2. »зменить структуру созданной таблицы, добавив в нее новый столбец.

ALTER TABLE dbo.EmployeName ADD MonthWorks INT NULL
SELECT *FROM EmployeName

--4.3. «аполнить новое поле с помощью запроса на обновление данных на €зыке SQL.

UPDATE EmployeName
SET MonthWorks = 17

SELECT *FROM EmployeName

--4.4. ќбновить значени€ в поле с помощью запроса на €зыке SQL с учетом определенного услови€.

UPDATE EmployeName
SET MonthWorks = 29
WHERE MonthWorks = 17

SELECT *FROM EmployeName

--4.5. —оздать запрос на €зыке SQL на добавление в таблицу TestTable новых записей (не менее 3).

INSERT INTO EmployeName
VALUES
(155, 'администратор',2700,5),
(155, 'мастер',1700,4),
(155, 'секретарь',700,3);

SELECT *FROM EmployeName

--4.6. —оставить запрос на €зыке SQL на удаление записей из созданной таблицы 
--(условие удалени€ записей выбрать самосто€тельно).

DELETE FROM EmployeName
WHERE MonthWorks = 29

SELECT *FROM EmployeName

--4.7. ”далить таблицу TestTable.

DROP TABLE EmployeName

--4.8. ѕопробуйте удалить запись из любой родительской таблицы. 
--ѕредварительно проанализируйте свойства св€зей между родительской и дочерней таблицами, 
--в частности, разрешено или запрещено каскадное (CASCADE) удаление данных. 
--ѕроверьте, есть ли у удал€емой записи зависимые записи в дочерней таблице. 
--—войства св€зей между таблицами задаютс€ в команде CREATE TABLE или в команде ALTER TABLE.

--родительска€ таблица, содержит ток уникальные записи и не допускает их повторение
SELECT *FROM Position
--дочерн€€ таблица
SELECT *FROM Employee


--4.9. ¬несите такие изменени€ в дочернюю таблицу, 
--чтобы можно было бы выполнить удаление любой записи из родительской таблицы.

--помен€ли правило удалени€ в настройках на - каскадно
DELETE
	FROM Position
		WHERE Position_ID = 777

SELECT *FROM Position
SELECT *FROM Employee

--4.10. ¬несите изменени€ в нужные таблицы так, чтобы дл€ удалени€ данных из родительской таблицы, 
--требовалось бы об€зательное удаление зависимых записей из дочерней таблицы.