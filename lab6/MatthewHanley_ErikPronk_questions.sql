-- {Matthew Hanley}
-- {Erik Pronk}

-- 1
SELECT sname FROM store order by sname;

-- 2
SELECT sname FROM store order by sname limit 3;

-- 3
SELECT sname FROM (SELECT * FROM store 
	ORDER BY id DESC LIMIT 3) as sAlias
	ORDER BY sname;

-- 4
SELECT sname FROM store WHERE price>1;

-- 5
SELECT sname, (qty*price) AS ext_price FROM store;

-- 6
select sum(price) as total from store;


-- 7
select count(*) as items from store;


-- 8
select * from course;


-- 9
select sum(count) as total_enrollment
from enrollment;


-- 10
select count(*) as count
from course,department
where department.id=course.department_id;



-- 11
select count(department.name) as count from department;


-- 12
select concat(department.name,' ',course.cname) as Classes
from course,department
where department.id=course.department_id;


-- 13
SELECT group_concat(department.name,course.cname) as Classes
from course,department
where department.id=course.department_id;


-- 14
SELECT * FROM course c
INNER JOIN enrollment e
ON e.id=c.id
INNER JOIN department d
ON d.id=c.department_id;
