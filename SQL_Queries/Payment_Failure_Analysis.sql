SELECT
    Payments.PaymentType,
    COUNT(*) AS TotalFailures
FROM
    Payments
    INNER JOIN Trips ON Payments.PaymentID = Trips.PaymentID
WHERE
    Payments.TransactionStatus = 'Failed'
GROUP BY
    Payments.PaymentType
ORDER BY
    COUNT(*) DESC;
