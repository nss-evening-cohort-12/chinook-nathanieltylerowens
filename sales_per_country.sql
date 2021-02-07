SELECT SUM(Total) as 'Total Sales', BillingCountry
FROM Invoice
GROUP BY BillingCountry