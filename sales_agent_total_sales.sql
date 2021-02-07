SELECT SUM(Invoice.Total) as "Total Sales", Employee.FirstName, Employee.LastName
FROM Invoice 
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId 
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.EmployeeId