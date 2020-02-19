CREATE OR REPLACE FUNCTION totalaccidents( y IN number) 
return INT 
AS 
counter int;
BEGIN 
Select count(*) into counter from ACCIDENT where extract (year from acc_date) = y;
return counter;
END;

DECLARE 
   c number(2); 
BEGIN 
   c := totalaccidents(2000); 
   dbms_output.put_line('Total no. of Accidents: ' || c); 
END; 
/
