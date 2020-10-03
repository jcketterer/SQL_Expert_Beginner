# SELECT 100 > 5;
# SELECT -15 > 15;
# SELECT 9 > -10; 
# SELECT 1 > 1; 
# SELECT 'a' > 'b';
# SELECT 'A' > 'a';
 
# SELECT 3 < -10;
# SELECT -10 < -9;
# SELECT 42 <= 42;
# SELECT 'h' < 'p';
# SELECT 'Q' <= 'q';

# SELECT title, author_lname, released_year FROM books 
# WHERE author_lname = 'Eggers' AND released_year > 2010;

# SELECT -10 > -20 AND 0 <= 0;
# SELECT -40 <= -0 AND 10 > 40;
# SELECT 54 <= 54 AND 'a' = 'A';

# SELECT 40 <= 100 OR -2 > 0;
# SELECT 10 > 5 OR 5 = 5;
# SELECT 'a' = 5 OR 3000 > 2000;

# SELECT 10 != 10;
# SELECT 15 > 14 && 99 - 5 <= 94;
# SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;

# SELECT title, released_year FROM books 
# WHERE released_year < 1980;

# SELECT title, author_lname FROM books
# WHERE author_lname IN ('Eggers','Chabon');

# SELECT title, author_lname, released_year FROM books
# WHERE author_lname = 'Lahiri' AND released_year > 2000; 

# SELECT * FROM books
# WHERE pages BETWEEN 100 AND 200;

# SELECT * FROM books
# WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

# SELECT title, author_lname, 
#     CASE
#         WHEN title LIKE '%stories%' THEN 'Short Stories'
#         WHEN title IN ('Just Kids','A Heartbreaking Work of Staggering Genius') THEN 'Memoir'
#         ELSE 'Novel'    
#     END AS TYPE
# FROM books;

# SELECT author_lname,
#     CASE    
#         WHEN COUNT(*) = 1 THEN '1 book'
#         ELSE CONCAT(COUNT(*), ' books')
#     END AS COUNT
# FROM books
# GROUP BY author_lname, author_fname;

















