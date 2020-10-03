# CREATE TABLE people (
#     name VARCHAR(100),
#     birthdate DATE,
#     birthtime TIME, 
#     birthDT DATETIME
# );

# INSERT INTO people (name, birthdate, birthtime, birthDT)
# VALUES ('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');

# INSERT INTO people (name, birthdate, birthtime, birthDT)
# VALUES ('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

# INSERT INTO people (name, birthdate, birthtime, birthDT)
# VALUES ('Microwave', CURDATE(), CURTIME(), NOW());

# SELECT CURTIME();

# SELECT CURDATE();

# SELECT DATE_FORMAT(CURDATE(),'%w');

# SELECT DATE_FORMAT(CURDATE(),'%W');

# SELECT DATE_FORMAT(NOW(),'%m/%d/%Y');

# SELECT DATE_FORMAT(NOW(),'%M %D at %h:%i');

# CREATE TABLE tweets (
#     tweet VARCHAR(140),
#     username VARCHAR(20),
#     created TIMESTAMP DEFAULT NOW()
# );


