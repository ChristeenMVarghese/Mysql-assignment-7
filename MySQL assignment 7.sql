use country;
select*from country;
select*from persons;
Alter table persons add column DOB date;
update persons set DOB = '2001-12-9' where id = 1;
update persons set DOB = '2002-09-5' where id = 2;
update persons set DOB = '2002-11-12' where id = 3;
update persons set DOB = '2001-01-31' where id = 4;
update persons set DOB = '2001-01-31' where id = 4;
update persons set DOB = '2003-08-21' where id = 5;
update persons set DOB = '2001-05-28' where id = 6;
update persons set DOB = '2004-06-20' where id = 7;
update persons set DOB = '2005-05-11' where id = 8;
update persons set DOB = '2006-08-09' where id = 9;
update persons set DOB = '2007-05-08' where id = 10;
update persons set DOB = '2008-05-09' where id = 11;
update persons set DOB = '2009-11-07' where id = 12;

DELIMITER $$

create function Age_calculation(DOB date)
returns int
deterministic
begin
declare age int;
set age = timestampdiff(year,DOB,curdate());
return age;
end $$
select Age_calculation('2001-12-9')
DELIMITER $$

CREATE FUNCTION CalculateAge(dob DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE age INT;
    SET age = TIMESTAMPDIFF(YEAR, dob, CURDATE());
    RETURN age;
END$$

DELIMITER ;
select Age_calculation('2002-09-5');
select Age_calculation('2002-11-12');
select Age_calculation('2001-01-31');
select count(country_Name)from country;
select length(country_Name) from country;
select upper(country_Name) from country;
select lower(country_Name) from country;
