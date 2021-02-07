  
SELECT MAX(TotalSales), BillingCountry
FROM
(SELECT SUM(Total) as 'TotalSales', BillingCountry
FROM Invoice
GROUP BY BillingCountry
)