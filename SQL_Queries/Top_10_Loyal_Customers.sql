SELECT
    TOP 10 Rider.FirstName,
    Rider.LastName,
    Count(*) AS TotalTrips
FROM
    Rider
    INNER JOIN Trips ON Rider.RiderID = Trips.RiderID
GROUP BY
    Rider.FirstName,
    Rider.LastName
ORDER BY
    COUNT(*) DESC;
