SELECT *
FROM
   (VALUES 
        (1, 'Peter', 'Griffin'),
        (2, 'Homer', 'Simpson'),
        (3, 'Ned', 'Flanders')
   ) AS Idiots
WHERE column1 = 2;

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal','Tom B. Erichsen','Skagen 21','Stavanger','4006','Norway');
