--Table create

 CREATE TABLE student (id INT , name VARCHAR (20) , Age INT , department VARCHAR (10) , grade INT);
INSERT INTO Student (id, name, age, department, grade) 
                      VALUES(100 , 'Zarah' , 20, 'Computer science' , 70),(101, Anu, 21, 'ECE', 85),
                      (102, 'Arun', 20, 'Physics',69),(103, 'Sophia', 22, 'chemistry', 90),
                      (104, 'Alex', 23, 'EEE', 65);

--display all students whose age is greater than 20.

SELECT * FROM `student`
WHERE age>20;

--display all students in the 'Computer Science' or 'Physics' 

SELECT * FROM `student`
WHERE department IN ('Computer science', 'physics');

--show the student who has the grade exactly equal to 90.```

SELECT * FROM `student`
WHERE grade=90;

-- find students whose grades are between 70 and 90.
                      
SELECT * FROM `student`
WHERE grade BETWEEN 70 AND 90;                     