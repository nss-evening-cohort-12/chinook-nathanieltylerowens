SELECT Customer.FirstName, Customer.LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
FROM Customer
INNER JOIN Invoice ON Invoice.CustomerId=Customer.CustomerId
WHERE Country = 'Brazil';