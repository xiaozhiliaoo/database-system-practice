select name,instructor.dept_name,building from instructor,department where instructor.dept_name=department.dept_name;
select * from instructor,teaches ;
select name,course_id from instructor,teaches where instructor.ID = teaches.ID;
select name,course_id from instructor natural join teaches;
select name,title from instructor natural join teaches,course where teaches.course_id=course.course_id;
select name,title from (instructor natural join teaches) join course using(course_id);

select name,title from instructor natural join teaches natural join course;
select distinct T.name from instructor as T, instructor as S where T.salary > S.salary and S.dept_name='Biology';
(select course_id from section where semester='Fall' and year=2009) union (select course_id from section where semester='Spring' and year=2010) ;
-- (select course_id from section where semester='Fall' and year=2009) union all (select course_id from section where semester='Spring' and year=2010) ;
-- (select course_id from section where semester='Fall' and year=2009) except (select course_id from section where semester='Spring' and year=2010) ;
select count(distinct ID) from teaches where semester='Spring' and year=2010;
select dept_name,avg(salary) from instructor group by dept_name;
select avg(salary) from instructor;
select dept_name,count(distinct ID) from instructor natural join teaches where semester='Spring' and year=2010 group by dept_name;
select dept_name,avg(salary) from instructor group by dept_name having avg(salary) > 42000;
select course_id,semester,year,sec_id,avg(tot_cred) from takes natural join student where year=2009 group by course_id,semester,year,sec_id having count(ID) >=2;
select distinct course_id from section where semester='Spring' and year=2009 and course_id in(select course_id from section where semester='Spring' and year=2010);
select distinct course_id from section where semester='Spring' and year=2009 and course_id not in(select course_id from section where semester='Spring' and year=2010);
select count(distinct ID) from takes where (course_id,sec_id,year) in (select course_id,sec_id,year from teaches where teaches.ID=10101);
select name from instructor where salary > some(select salary from instructor where dept_name='Biology');
select name from instructor where salary > all(select salary from instructor where dept_name='Biology');
select course_id from section as S where semester='Fall' and year=2009 and exists(select * from section as T where  semester='Spring' and year=2010 and S.course_id=T.course_id);
select dept_name, avg_salary from (select dept_name, avg(salary)as avg_salary from instructor  group by dept_name) as A where avg_salary>42000;
update instructor set salary = (case when salary <=10000 then salary * 1.05 else salary * 1.03 end);
select * from student left join takes on student.ID=takes.ID;
select * from student left join takes on true where student.ID=takes.ID;




--------- 课后题目
select title from course where dept name = 'Comp. Sci.' and credits = 3;



