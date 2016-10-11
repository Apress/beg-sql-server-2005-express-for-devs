BEGIN TRAN ShareUpd
   SELECT '1st TranCount',@@TRANCOUNT
   BEGIN TRAN ShareUpd2
      SELECT '2nd TranCount',@@TRANCOUNT
      COMMIT TRAN ShareUpd2
      SELECT '3rd TranCount',@@TRANCOUNT
COMMIT TRAN -- It is at this point that data modifications will be committed
SELECT 'Last TranCount',@@TRANCOUNT





