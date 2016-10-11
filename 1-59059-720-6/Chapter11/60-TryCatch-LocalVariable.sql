DECLARE @Probs int
SELECT 'This will work'
BEGIN TRY
    SELECT @Probs='Not Right'
    SELECT 10+5,'This will also work, however the error means it wont run'
END TRY
BEGIN CATCH
    DECLARE @ErrMsg NVARCHAR(4000)
    DECLARE @ErrSeverity INT
    DECLARE @ErrState INT
	SELECT 'Blimey! An error'

    SELECT 
        @ErrMsg = ERROR_MESSAGE(),
        @ErrSeverity = ERROR_SEVERITY(),
        @ErrState = ERROR_STATE();

   RAISERROR (@ErrMsg,@ErrSeverity,@ErrState)
END CATCH
