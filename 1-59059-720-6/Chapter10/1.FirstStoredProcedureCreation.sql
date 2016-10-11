CREATE PROCEDURE CustomerDetails.apf_InsertCustomer 
    -- Add the parameters for the function here 
    @FirstName varchar(50) , 
    @LastName varchar(50),
    @CustTitle int,
    @CustInitials nvarchar(10),
    @AddressId int,
    @AccountNumber nvarchar(15),
    @AccountTypeId int
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    INSERT INTO CustomerDetails.Customers   
    (CustomerTitleId,CustomerFirstName,CustomerOtherInitials,CustomerLastName,
    AddressId,AccountNumber,AccountTypeId,ClearedBalance,UnclearedBalance)
    VALUES (@CustTitle,@FirstName,@CustInitials,@LastName,
    @AddressId,@AccountNumber,@AccountTypeId,0,0)

END
GO
