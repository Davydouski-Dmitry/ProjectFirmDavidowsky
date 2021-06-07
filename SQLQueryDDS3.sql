USE[ProjectFirmDavidowsky]
GO
--5.1. ��������� ������ �� ����� SQL, 
--������������ ��� ���� ����� ������� � ������� �� ������ ������� � �����������.

SELECT T.TypeOfWork_ID,T.[Description],T.PriceWork,T.HourRate
	FROM TypeOfWork T
	ORDER BY T.HourRate

--5.2. ��������� ������ �� ����� SQL, ������������ ������������ ���� ����� ������� 
--� ������� �� �������� ������� (���������� �� ���� � ����� ����������,
--��������� ���������� ��������) � ����������� �� ���� �����.

SELECT T.TypeOfWork_ID,T.[Description],T.PriceWork,T.HourRate
	FROM TypeOfWork T
		WHERE T.PriceWork>80
		AND T.HourRate>1000
	ORDER BY T.HourRate, T.[Description]



--5.3. ��������� ������ �� ����� SQL � ����������� ��������� �������� ��� �������.

SELECT *FROM Project

--����������: ������� � ������� ��������� ��������
SELECT Customer_ID,COUNT(Customer_ID)
	AS ProjectCustomer FROM Project
		GROUP BY Customer_ID

--5.4. ��������� ������ �� ����� SQL 
--� ����������� ��������� �������� ��� ������� � ������������ ��������.

SELECT Customer_ID,COUNT(Customer_ID)
	AS ProjectCustomer FROM Project
	WHERE YEAR(EndData) = 2022
		GROUP BY Customer_ID
		

--5.5. ������� ������ � ����������� ��������� �������� ��� �������, ���������� �� ���������� 
--������, � ������� ������������ ����� � ����������� � �������� �������.

SELECT *FROM Employee
SELECT *FROM Position



SELECT *
	FROM Employee E CROSS JOIN Position P
		WHERE E.Position_ID = P.Position_ID
			ORDER BY Age DESC


--5.6. ����������� ������ �� ����� SQL, �������������� ������� �������� ��������������� �� 
--�� ��������� ������ �������� �������, �� ���� � ����� �������� ����� �������� 
--���������������� �� �������������� �� ������������ ������. ��������� ����������.

SELECT E.Age,E.Position_ID,E.FullName,P.JobTitle
	FROM Employee E INNER JOIN Position P
		ON E.Position_ID = P.Position_ID
		ORDER BY E.Age
		
--5.7. ����������� ������ �� ����� SQL, �������������� ������� ��������, ������ ��������� 
--��� ���� ����������� ������� � �������� ����������� ����. ��������� ���������� �� ���������� �����.

SELECT E.Age,E.Position_ID,E.FullName,P.JobTitle,(Salary*3) [�������� �� 3 ����]
	FROM Employee E INNER JOIN Position P
		ON E.Position_ID = P.Position_ID
		ORDER BY E.Age,E.Position_ID

--5.8. ����������� ������ �� ����� SQL, ����������� ����������� ���������� ������.
SELECT *FROM Project
SELECT *FROM TypeOfWork

SELECT *
	FROM Project P INNER JOIN TypeOfWork T
		ON P.TypeOfWork_ID = T.TypeOfWork_ID
	

--5.9. ����������� ������ �� ����� SQL, ����������� ����������� ���������� ������.

SELECT *FROM Design
SELECT *FROM Project

SELECT D.Project_ID new_a, D.Customer_ID new_b
FROM Design D
INTERSECT
SELECT P.Project_ID, P.Customer_ID
FROM Project P

--5.10. ����������� ������ �� ����� SQL � ����������� � ������������ ���������� ���������.
SELECT *FROM Employee

SELECT FullName,Position_ID
FROM Employee
WHERE FullName =
(SELECT FullName 
FROM Employee
WHERE Position_ID = 888)


--5.11. ����������� ������ �� ����� SQL � ����������� � ������������� ���������� ���������.
SELECT *FROM Project
SELECT *FROM TypeOfWork

--��������� �������� ������� �������, �������� ��� ���.
--��������: ���������� ���� ����� 16000�, ��� �� ���� ����� ������� ������
SELECT P.Project_ID, P.PaymentMark,P.TypeOfWork_ID
FROM Project P
WHERE P.TypeOfWork_ID IN
	(SELECT T.TypeOfWork_ID
		FROM TypeOfWork T
		WHERE T.HourRate>16000
		OR T.PriceWork=125);



