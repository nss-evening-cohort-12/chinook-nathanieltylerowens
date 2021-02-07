SELECT e.FirstName, e.LastName, count(c.customerId)
FROM Employee e, Customer c 
where c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId