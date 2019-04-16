.read lab12.sql

-- Q5
CREATE TABLE fa18favpets AS
  SELECT pet AS pet,count(*) AS number From students GROUP BY pet ORDER BY -count(*) LIMIT 10;


CREATE TABLE fa18dog AS
  SELECT pet,max(number) From fa18favpets;


CREATE TABLE fa18alldogs AS
  SELECT pet,count(*) From students WHERE pet LIKE '%dog%';


CREATE TABLE obedienceimages AS
  SELECT seven,denero,count(*) FROM students WHERE seven='7' GROUP BY denero;

-- Q6
CREATE TABLE smallest_int_count AS
  SELECT smallest,count(*) FROM students GROUP BY smallest ORDER BY smallest;
