﻿ALTER ROLE [db_owner] ADD MEMBER [NT AUTHORITY\IUSR];


GO
ALTER ROLE [db_datareader] ADD MEMBER [NT AUTHORITY\IUSR];


GO
ALTER ROLE [db_datareader] ADD MEMBER [IIS APPPOOL\DefaultAppPool];


GO
ALTER ROLE [db_datawriter] ADD MEMBER [NT AUTHORITY\IUSR];


GO
ALTER ROLE [db_datawriter] ADD MEMBER [IIS APPPOOL\DefaultAppPool];
