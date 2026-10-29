-- students table created

CREATE TABLE students(student_id INT PRIMARY KEY,
                      name VARCHAR(30),
                      email VARCHAR(50) UNIQUE);

-- courses table created

CREATE TABLE courses(course_id INT PRIMARY KEY,
                     course_name VARCHAR(50));

-- Create a table called enrollments to store which student has enrolled in which course. 

CREATE TABLE enrollments(student_id INT, course_id INT,
                         FOREIGN KEY (student_id) REFERENCES students(student_id),
                         FOREIGN KEY (course_id) REFERENCES courses(course_id));




