DECLARE @LoopCount int, @TestCount int
SET @LoopCount = 0
SET @TestCount = 0
WHILE @LoopCount < 20
BEGIN
   SET @LoopCount = @LoopCount + 1
   SET @TestCount = @TestCount + 1
   SELECT @LoopCount, @TestCount
   IF @TestCount > 10
      BREAK
   ELSE
      CONTINUE
   SELECT @LoopCount, @TestCount
END
