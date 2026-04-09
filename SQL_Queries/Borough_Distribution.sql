SELECT
    Locations.Borough,
    Locations.Zone,
    Count(*) AS TotalPickups
FROM
    Locations
    INNER JOIN Trips ON Locations.LocationID = Trips.LocationID
GROUP BY
    Locations.Borough,
    Locations.Zone
ORDER BY
    Count(*) DESC;
