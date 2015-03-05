select name from student where class=4 and major='CS';

select course.Course_name from course ,section  where 
section.course_number = course.course_number and 
section.instructor= 'Anderson' and 
section.year in (07,08);

select course_number,semester, Year from 
section where instructor ='King';

insert into student (Name,Student_number,class,Major) values ('Johnson',25,1,'Economics');

UPDATE student set class=2 where name='Smith';

delete from student where name='Smith' and student_number=17;
 