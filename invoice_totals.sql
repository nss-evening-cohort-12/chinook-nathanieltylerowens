SELECT Invoice.Total, Invoice.BillingCountry, Customer.FirstName AS "Customer First", Customer.LastName AS "Customer Last",Employee.FirstName AS "Agent First", Employee.LastName AS "Agent Last"
FROM Invoice 
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId 
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
WHERE Employee.Title = 'Sales Support Agent';