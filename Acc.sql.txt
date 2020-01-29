SELECT COUNT(*) FROM PARTICIPATED NATURAL JOIN ACCIDENT
WHERE (EXTRACT (YEAR FROM TO_DATE(acc_date)))=2000;

SELECT COUNT(*) FROM CAR NATURAL JOIN PARTICIPATED
WHERE CAR.model = 'SWIFT';

Produce a listing with header as OWNER_NAME, No. of Accidents, and Total Damage Amount in a descending order on total damage.
SELECT name as Owner_name, COUNT(*) as No_Of_Accidents, SUM(damage_amount) as Total_damage
FROM PERSONS NATURAL JOIN PARTICIPATED
GROUP BY name
ORDER BY Total_damage desc;

SELECT PERSONS.name
FROM PERSONS,PARTICIPATED NATURAL JOIN ACCIDENT
WHERE PERSONS.driver_id = PARTICIPATED.driver_id
GROUP BY name,EXTRACT(YEAR FROM TO_DATE(acc_date)) 
HAVING COUNT(*) >= 2;



