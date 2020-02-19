CREATE OR REPLACE PROCEDURE caryear(n IN varchar, year IN int)
as 
counter integer;
dmg integer;
Begin 
Select damage_amount into dmg from PERSONS NATURAL JOIN ACCIDENT NATURAL JOIN PARTICIPATED where name = n AND extract(year from acc_date)=year;
DBMS_OUTPUT.PUT_LINE('Damage amount: ' || dmg);
END;


Create or replace procedure CARINFO(lc in VARCHAR)
as
DECLARE 
    report_number varchar(50);
    acc_date date;
    locations varchar(50);
Begin 
(SELECT * from ACCIDENT where location = lc);
end;