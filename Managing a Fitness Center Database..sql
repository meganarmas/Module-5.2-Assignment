CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

-- task 1 populate workoutsession and members

INSERT INTO Members (id, name, age) VALUES
(101, 'Jane Doe', 24),
(102, 'John Smith', 43),
(204, 'Diane Ford', 30),
(304, 'Matt Riley', 21);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES
(4321, 304, '2024-08-01', '7 am', 'cycling'),
(4322, 204, '2024-08-01', '7 am', 'cycling'),
(5673, 102, '2024-08-01', '7 am', 'yoga'),
(8954, 101, '2024-08-01', '1 pm', 'yoga');


-- task 2 update workout session time

UPDATE WORKOUTSESSIONS
set session_time = '7 am'
WHERE member_id = '101';

-- task 3 delete john smith as he has cancelled\
set SQL_SAFE_UPDATES=0;
DELETE From Members
WHERE name='John Smith';
SET SQL_SAFE_UPDATES=1;
SELECT * FROM Members



