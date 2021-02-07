SELECT COUNT(*), BillingCountry as 'Invoices Per Country'
From Invoice
GROUP BY BillingCountry