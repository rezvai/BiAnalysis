update joblist set name = lower(name) ---Приводим к нижнему регистру поле name 

update joblist set description  = lower(description) ---Приводим к нижнему регистру поле description 

update joblist set region_name  = lower(region_name) ---Приводим к нижнему регистру поле region_name 

update joblist set employer  = lower(employer) ---Приводим к нижнему регистру поле employer 

update joblist set skills = lower(skills) ---Приводим к нижнему регистру поле skills 

update joblist set work_schedule  = lower(work_schedule) ---Приводим к нижнему регистру поле work_schedule

select count(case when nullif(sallary, 0) is null then 1 end) as empty, count(case when nullif(sallary, 0) is not null then 1 end) as notempty from joblist j ---Выводим информацию о прупущенных значениях в поле sallary

delete joblist where sallary = 0 --- Удаление полей с пропущенными значениями по зарплате

select count(case when nullif(skills, '') is null then 1 end) as empty, count(case when nullif(skills, '') is not null then 1 end) as notempty from joblist j ---Выводим информацию о прупущенных значениях в поле skills

select length(name) / (select avg(length(name)) from joblist j) as namenanalisys,
	   length(description) / (select avg(length(name)) from joblist j) as descriptionanalisys,	
	   sallary  / (select avg(sallary) from joblist j) as sallaryanalisys,
	   length(skills) / (select avg(length(skills)) from joblist j) as skillsanalisys
from joblist j limit 10---Соотношение определенного значения в данных к среднему по полю 

select * from joblist j ---Выводим для просмотра всю таблицу

