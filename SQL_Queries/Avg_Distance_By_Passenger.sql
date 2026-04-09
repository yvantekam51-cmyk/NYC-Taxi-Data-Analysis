SELECT
    Trips.PassengerCount,
    AVG(Trips.TripDistance) AS AvgTripDistance,
    COUNT(*) AS NumberOfTrips
FROM
    Trips
GROUP BY
    Trips.PassengerCount
ORDER BY
    Trips.PassengerCount;
