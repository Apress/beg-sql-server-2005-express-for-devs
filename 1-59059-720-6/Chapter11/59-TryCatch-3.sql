DECLARE @Probs int
BEGIN TRY
   SELECT 'This will work'
   BEGIN TRY
      SELECT * FROM #Temp
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
