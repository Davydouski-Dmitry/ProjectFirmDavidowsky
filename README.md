# ProjectFirmDavidowsky разработанное приложение базы данных на языке Transact-SQL (T-SQL)

Концептуальная модель данных, логическая модель данных и физическая модель данных первоначально разработаны ERwin Data Modeler (CASE средство)
![image](https://user-images.githubusercontent.com/40003490/121080716-74253b00-c7e4-11eb-84f1-108f47ee055b.png)
![image](https://user-images.githubusercontent.com/40003490/121080742-80a99380-c7e4-11eb-91cd-952a07d656a9.png)


Для реализации приложения применялась следующая СУБД - Microsoft SQL ServerManagement Studio 2019

Разработаны запросы на языке Transact-SQL для создания всех таблиц базы данных, и заполнения данными и взаимосвязями.

![image](https://user-images.githubusercontent.com/40003490/121081985-1a257500-c7e6-11eb-92c8-c4f8eacf39dc.png)
![image](https://user-images.githubusercontent.com/40003490/121082178-64a6f180-c7e6-11eb-975c-6ed30c12820b.png)

Созданы запросы манипулирования данными (скрипты созданных запросов прилагаются):
1. Создать новую таблицу TestTable с помощью запроса на языке SQL SELECT … INTO… (исходную таблицу и условие отбора записей в новую таблицу выбрать самостоятельно).
2. Изменить структуру созданной таблицы, добавив в нее новый столбец.
3. Заполнить новое поле с помощью запроса на обновление данных на языке SQL.
4. Обновить значения в поле с помощью запроса на языке SQL с учетом определенного условия.
5. Создать запрос на языке SQL на добавление в таблицу TestTable новых записей (не менее 3.
6. Составить запрос на языке SQL на удаление записей из созданной таблицы (условие удаления записей выбрать самостоятельно).
7. Удалить таблицу TestTable.
8. Попробуйте удалить запись из любой родительской таблицы. Предварительно проанализируйте свойства связей между родительской и дочерней таблицами, в частности, разрешено или запрещено каскадное (CASCADE) удаление данных. Проверьте, есть ли у удаляемой записи зависимые записи в дочерней таблице. Свойства связей между таблицами задаются в команде CREATE TABLE или в команде ALTER TABLE.
9. Внесите такие изменения в дочернюю таблицу, чтобы можно было бы выполнить удаление любой записи из родительской таблицы.
10. Внесите изменения в нужные таблицы так, чтобы для удаления данных из родительской таблицы, требовалось бы обязательное удаление зависимых записей из дочерней таблицы.

![image](https://user-images.githubusercontent.com/40003490/121082704-265e0200-c7e7-11eb-8d83-82303cdee66f.png)
![image](https://user-images.githubusercontent.com/40003490/121082727-30800080-c7e7-11eb-8821-d7ec4995d3ee.png)


Запросы на выборку данных (скрипты созданных запросов прилагаются):
1. Составить запрос на языке SQL, отображающий все поля одной таблицы с отбором по одному условию и сортировкой.
2. Составить запрос на языке SQL, отображающий определенные поля одной таблицы с отбором по сложному условию (состоящему из двух и более предикатов, связанных логической функцией) и сортировкой по двум полям.
3. Составить запрос на языке SQL с выполнением групповой операции над данными.
4. Составить запрос на языке SQL с выполнением групповой операции над данными и агрегирующей функцией.
5. Создать запрос с выполнением групповой операции над данными, выбранными из нескольких таблиц, с отбором определенных групп и сортировкой в обратном порядке.
6. Разработать запрос на языке SQL, результирующая таблица которого соответствовала бы по структуре записи дочерней таблице, но коды в полях внешнего ключа заменить соответствующими им наименованиями из родительских таблиц. Выполнить сортировку.
7. Разработать запрос на языке SQL, результирующая таблица которого, должна содержать все поля предыдущего запроса и добавить вычисляемое поле. Выполнить сортировку по нескольким полям.
8. Разработать запрос на языке SQL, выполняющий объединение нескольких таблиц.
9. Разработать запрос на языке SQL, выполняющий пересечение нескольких таблиц.
10. Разработать запрос на языке SQL с подзапросом с однострочным оператором сравнения.
11. Разработать запрос на языке SQL с подзапросом с многострочным оператором сравнения.


![image](https://user-images.githubusercontent.com/40003490/121083089-ab491b80-c7e7-11eb-8d24-42e27f065948.png)
![image](https://user-images.githubusercontent.com/40003490/121083134-b8660a80-c7e7-11eb-8c7c-db1040d56a0f.png)
![image](https://user-images.githubusercontent.com/40003490/121083221-d3387f00-c7e7-11eb-90c0-39a57f79304a.png)

Создание представлений
1. Разработать запрос на языке SQL для создания представления, на основе запроса на выборку, имеющего достаточно сложную структуру, чтобы сохранить его в виде представления.
2. Разработать запрос на языке SQL для создания представления на основе представления, созданного в п. 6.1, и добавить в него вычисляемое поле. Показать, как можно выполнить сортировку результата выполнения запроса.

![image](https://user-images.githubusercontent.com/40003490/121083470-24487300-c7e8-11eb-87ff-c9798c9b3d75.png)

Разработка триггеров, пользовательских функций и хранимых процедур и тд
