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
('101', 'Jane Doe', '24'),
('102', 'John Smith' '43'),
('204', 'Diane Ford', '30'),
('304', 'Matt Riley', '21');

INSERT INTO WORKOUTSESSIONS (session_id, member_id, session_date, session_time, activity) VALUES
('4321', '304', 'August 1 2024', '7 am', 'cycling'),
('4321' '204', 'August 1 2024', '7 am', 'cycling'),
('5673' '102', 'August 1 2024', '7 am', 'yoga'),
('8954' '101', 'August 1 2024' '1 pm' 'yoga');


-- task 2 update workout session time

UPDATE WORKOUTSESSIONS
set session_time = '7 am'
WHERE member_id = '101';

-- task 3 delete john smith as he has cancelled\
set SQL_SAFE_UPDATES=0;
delete from Members
where name = 'John Smith';
SET SQL_SAFE_UPDATES=1;

select * from members



