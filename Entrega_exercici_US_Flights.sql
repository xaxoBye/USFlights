-- SELECT * FROM usairlineflights2.flights;
SELECT COUNT(flightID) FROM flights; -- 4758
SELECT Origin, AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides
FROM usairlineflights2.flights
GROUP BY Origin
ORDER BY Origin;

SELECT Origin, colYear, colMonth, AVG(ArrDelay) AS prom_arribades  
FROM usairlineflights2.flights 
GROUP BY Origin, colYear, colMonth
ORDER BY Origin, colYear, colMonth;

SELECT usairlineflights2.usairports.City, colYear, colMonth, AVG(ArrDelay) AS prom_arribades  
FROM usairlineflights2.flights 
INNER JOIN usairlineflights2.usairports
ON usairlineflights2.flights.Origin = usairlineflights2.usairports.IATA
GROUP BY usairlineflights2.usairports.City, colYear, colMonth
ORDER BY usairlineflights2.usairports.City, colYear, colMonth;

SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) 
FROM usairlineflights2.flights 
GROUP BY UniqueCarrier, colYear, colMonth
ORDER BY UniqueCarrier, colYear, colMonth;

SELECT TailNum, SUM(Distance) AS Distancia
FROM usairlineflights2.flights 
GROUP BY TailNum
ORDER BY Distance DESC
LIMIT 10;

SELECT UniqueCarrier, AVG(ArrDelay) AS prom_arribades 
FROM usairlineflights2.flights WHERE ArrDelay > 10
GROUP BY UniqueCarrier
ORDER BY UniqueCarrier;
