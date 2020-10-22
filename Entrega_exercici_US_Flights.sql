-- SELECT * FROM usairlineflights.flights;
-- ALTER TABLE usairlineflights.flights ADD COLUMN `flightID` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY;
SELECT COUNT(flightID) FROM flights; -- 4758
SELECT Origin, AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides
FROM usairlineflights.flights
GROUP BY Origin
ORDER BY Origin;

SELECT Origin, colYear, colMonth, AVG(ArrDelay) AS prom_arribades  
FROM usairlineflights.flights 
GROUP BY Origin, colYear, colMonth
ORDER BY Origin, colYear, colMonth;

SELECT usairlineflights.usairports.City, colYear, colMonth, AVG(ArrDelay) AS prom_arribades  
FROM usairlineflights.flights 
INNER JOIN usairlineflights.usairports
ON usairlineflights.flights.Origin = usairlineflights.usairports.IATA
GROUP BY usairlineflights.usairports.City, colYear, colMonth
ORDER BY usairlineflights.usairports.City, colYear, colMonth;

SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) 
FROM usairlineflights.flights 
GROUP BY UniqueCarrier, colYear, colMonth
ORDER BY UniqueCarrier, colYear, colMonth;

SELECT TailNum, SUM(Distance) AS Distancia
FROM usairlineflights.flights 
GROUP BY TailNum
ORDER BY Distance DESC
LIMIT 10;

SELECT UniqueCarrier, AVG(ArrDelay) AS prom_arribades 
FROM usairlineflights.flights WHERE ArrDelay > 10
GROUP BY UniqueCarrier
ORDER BY UniqueCarrier;
