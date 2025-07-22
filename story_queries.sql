-- Print the number of books in the database
SELECT 
  COUNT(*) 
FROM 
  books;
  
-- Print out how many books were released in each released_year
SELECT 
  released_year, 
  COUNT(released_year) 
FROM 
  books 
GROUP BY 
  released_year;
  
-- Print out the total number of books in stock_quantity
SELECT 
  SUM(stock_quantity) AS 'total number of books' 
FROM 
  books;
  
-- Find the average released_year for each author_lname
SELECT 
  author_lname, 
  author_fname, 
  AVG(released_year) 
FROM 
  books 
GROUP BY 
  author_lname, 
  author_fname;
  
-- Find the full name of author who wrote the longest books
SELECT 
  CONCAT(author_fname, ' ', author_lname) AS fullname, 
  pages 
FROM 
  books 
WHERE 
  pages = (
    SELECT 
      MAX(pages) 
    FROM 
      books
  );
  
-- Make this happens
-- year | #books | avg pages
SELECT 
  released_year AS 'year', 
  COUNT(title) AS '# books', 
  AVG(pages) AS 'avg pages' 
FROM 
  books 
GROUP BY 
  released_year 
ORDER BY 
  released_year ASC;
