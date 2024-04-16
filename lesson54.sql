CREATE TABLE Employees (
	id INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    middle_name varchar(100),
    age INT NOT NULL,
    current_status varchar(100) not null default 'employed'
);


