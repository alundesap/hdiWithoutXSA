--First/One Time Setup to activate diserver on HANA 
DO
BEGIN
  DECLARE dbName NVARCHAR(25) = 'HXE'; --<-- substitute XY1 by the name of your tenant DB
  -- Start diserver
  DECLARE diserverCount INT = 0;
  SELECT COUNT(*) INTO diserverCount FROM SYS_DATABASES.M_SERVICES WHERE SERVICE_NAME = 'diserver' AND DATABASE_NAME = :dbName AND ACTIVE_STATUS = 'YES';
  IF diserverCount = 0 THEN
    EXEC 'ALTER DATABASE ' || :dbName || ' ADD ''diserver''';
  END IF;   
  
END;
