
-- =============================================
-- Author: Jamie
-- Create date: 20200711
-- Description:	���o�Ȥ�̷s���
-- exec ProcedureName 'jamieleetw95'
-- =============================================
CREATE PROCEDURE {ProcedureName}
	@Account varchar(256)
AS
BEGIN
	DECLARE @ReturnValue int

    SELECT @ReturnValue= (SELECT top 1 {ColumnName}
						FROM {DBName} with (nolock) 
						WHERE Account = @Account
						ORDER BY [TimeStamp] DESC)

	RETURN @ReturnValue
END
