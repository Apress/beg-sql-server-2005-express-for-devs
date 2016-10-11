DECLARE @Probs int
BEGIN TRY
   SELECT 'This will work'
   BEGIN TRY
     SELECT @Probs='Not Right'
      SELECT 10+5,'This will also work, however the error means it wont run'
   END TRY
   BEGIN CATCH
      SELECT 'The second catch block'
   END CATCH
   SELECT 'And then this will now work'
END TRY
BEGIN CATCH
   SELECT 'An error has occurred at line ' + LTRIM(STR(ERROR_LINE())) +
      ' with error ' + LTRIM(STR(ERROR_NUMBER())) + ' ' + ERROR_MESSAGE()
END CATCH
