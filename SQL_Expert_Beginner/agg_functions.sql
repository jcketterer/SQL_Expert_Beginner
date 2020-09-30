# SELECT COUNT(*) FROM books;

# SELECT released_year, COUNT(title) 
# FROM books
# GROUP BY released_year; 

# SELECT SUM(stock_quantity) FROM books;

# SELECT author_fname, 
#         author_lname,
#         AVG(released_year)
# FROM books
# GROUP BY author_lname,
#         author_fname;

# SELECT CONCAT(author_fname, ' ', author_lname) AS 'Author Name',
#         pages
# FROM books
# WHERE pages = (SELECT Max(pages) FROM books);
 
# SELECT released_year AS year, 
#         COUNT(title) AS '# of books',
#         AVG(pages) AS 'avg pages'
# FROM books
# GROUP BY released_year; 