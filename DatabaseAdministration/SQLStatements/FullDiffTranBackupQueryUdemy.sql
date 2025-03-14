CREATE TABLE SQLBackupRestoreTest (
ID INT NOT NULL PRIMARY KEY,
loginname VARCHAR(100) NOT NULL,
logindate DATETIME NOT NULL DEFAULT getdate()

)
GO 

select * from SQLBackupRestoreTest

insert into SQLBackupRestoreTest (ID, loginname) values (1,'test1')
insert into SQLBackupRestoreTest (ID, loginname) values (2,'test2')
insert into SQLBackupRestoreTest (ID, loginname) values (3,'test3')
insert into SQLBackupRestoreTest (ID, loginname) values (4,'test4') 
insert into SQLBackupRestoreTest (ID, loginname) values (5,'test5')
--Full backup had 5 rows


insert into SQLBackupRestoreTest (ID, loginname) values (6,'test6')      
insert into SQLBackupRestoreTest (ID, loginname) values (7,'test7')      
insert into SQLBackupRestoreTest (ID, loginname) values (8,'test8')      
insert into SQLBackupRestoreTest (ID, loginname) values (9,'test9')      
insert into SQLBackupRestoreTest (ID, loginname) values (10,'test10')
--Diff back up 10 rows 


insert into SQLBackupRestoreTest (ID, loginname) values (11,'test11')      
insert into SQLBackupRestoreTest (ID, loginname) values (12,'test12')      
insert into SQLBackupRestoreTest (ID, loginname) values (13,'test13')
--Tran log back -1 up 13 rows 


insert into SQLBackupRestoreTest (ID,loginname) values (14, 'test14')
insert into SQLBackupRestoreTest (ID,loginname) values (15, 'test15')
insert into SQLBackupRestoreTest (ID,loginname) values (16, 'test16')
insert into SQLBackupRestoreTest (ID,loginname) values (17, 'test17')
--Tran log back -2 up 17 rows 


insert into SQLBackupRestoreTest (ID,loginname) values (115, 'test115') --Mar 14 2025  3:24PM

insert into SQLBackupRestoreTest (ID,loginname) values (114, 'test114') --Mar 14 2025  3:25PM

insert into SQLBackupRestoreTest (ID,loginname) values (116, 'test116') --Mar 14 2025  3:26PM
insert into SQLBackupRestoreTest (ID,loginname) values (117, 'test117')

print getdate()



