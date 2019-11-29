CREATE PROCEDURE [dbo].[CustomerRetrieve]
	@StartsWith AS VARCHAR (1)
AS
BEGIN
	SELECT Customer.CustomerId, 
		Customer.LastName,
		Customer.FirstName,
		Customer.EmailAddress
	FROM Customer
	WHERE LastName LIKE @StartsWith + '%'
	ORDER BY LastName
END