DROP DATABASE IF EXISTS employee_tracker;
CREATE DATABASE employee_tracker;

USE employee_tracker;

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR (30) NOT NULL,
    role_id INT,
    manager_id INT, 
    PRIMARY KEY (id),
    FOREIGN KEY (manager_id)
    REFERENCES employee(id)
);

INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Khris", "Smith", 1, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("John", "McGregor", 2, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Anna", "Davis", 3, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Kate", "Denis", 4, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Artur", "Johansen", 5, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Mary", "Davidson", 3, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Alex", "Ball", 2, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Peter", "Parker", 1, 1 );
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Sherlock", "Holmes", 2, 1);

CRETAE TABLE role (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT,
    PRIMARY KEY (id)
    FOREIGN KEY(department_id),
    REFERENCE DEPARTMENT(id)
);

insert into role(title, salary, department_id) values('Manager', 400000, 1);
insert into role(title, salary, department_id) values('Engineer', 200000, 2);
insert into role(title, salary, department_id) values('Accountant', 100000, 3);
insert into role(title, salary, department_id) values('Designer', 80000, 4);
insert into role(title, salary, department_id) values('Administration', 70000, 5);

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);
insert into department(name)
values ('Management'),
       ('Engineering'),
       ('Accounting'),
       ('Marketing'),
       ('Human Resources');