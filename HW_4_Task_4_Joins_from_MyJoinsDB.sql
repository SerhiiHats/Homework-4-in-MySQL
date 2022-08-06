USE MyJoinsDB;

-- 1) Получите контактные данные сотрудников (номера телефонов, место жительства) --

SELECT myjoinsdb.employees.name_emp, myjoinsdb.employees.phone_emp, myjoinsdb.description_employees.address_des FROM myjoinsdb.employees
INNER JOIN myjoinsdb.description_employees
ON myjoinsdb.employees.id_emp = myjoinsdb.description_employees.id_emp;

 -- 2) Получите информацию о дате рождения всех холостых сотрудников и их номера --
 
 SELECT myjoinsdb.employees.name_emp, myjoinsdb.description_employees.married_des, myjoinsdb.description_employees.birthday_des, myjoinsdb.employees.phone_emp FROM myjoinsdb.employees
 INNER JOIN myjoinsdb.description_employees
 ON myjoinsdb.employees.id_emp = myjoinsdb.description_employees.id_emp
 WHERE myjoinsdb.description_employees.married_des = 'not married';
 
 -- 3) Получите информацию обо всех менеджерах компании: дату рождения и номер телефона. --
 
 SELECT myjoinsdb.employees.name_emp, myjoinsdb.title_jobs.title_job, myjoinsdb.description_employees.birthday_des, myjoinsdb.employees.phone_emp FROM myjoinsdb.employees
 INNER JOIN myjoinsdb.title_jobs
 ON myjoinsdb.employees.id_emp = myjoinsdb.title_jobs.id_emp
 INNER JOIN myjoinsdb.description_employees
 ON myjoinsdb.employees.id_emp = myjoinsdb.description_employees.id_emp
 WHERE myjoinsdb.title_jobs.title_job = 'менеджер';