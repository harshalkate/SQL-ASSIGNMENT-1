use first_one;
-- Q.1 SQL first question
create table data_base(
id int,
technology varchar(20)
);
insert into data_base(id,technology) values("1","DSA"),
("1","tableau"),("1","SQL"),
("2","R"),("2","Power bi"),
("1","Python"
);
select * from data_base;

SELECT id 
FROM data_base 
WHERE technology = "DSA"
AND id IN (
    SELECT id 
    FROM data_base 
    WHERE technology = "tableau"
    AND id IN (
        SELECT id 
        FROM data_base 
        WHERE technology = "SQL"
        AND id IN (
            SELECT id 
            FROM data_base 
            WHERE technology = "Python"
        )
    )
);


