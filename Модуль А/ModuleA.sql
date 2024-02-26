update joblist set name = lower(name) ---Приводим к нижнему регистру поле name 

update joblist set description  = lower(description) ---Приводим к нижнему регистру поле description 

update joblist set region_name  = lower(region_name) ---Приводим к нижнему регистру поле region_name 

update joblist set employer  = lower(employer) ---Приводим к нижнему регистру поле employer 

update joblist set skills = lower(skills) ---Приводим к нижнему регистру поле skills 

update joblist set work_schedule  = lower(work_schedule) ---Приводим к нижнему регистру поле work_schedule 

select * from joblist j ---Выводим для просмотра всю таблицу