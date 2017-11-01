library(DBI)
library(rJava)
library(RJDBC)

drv<-JDBC("com.microsoft.sqlserver.jdbc.SQLServerDriver" , "E:/Adhithya/sqljdbc4-2.0.jar" ,identifier.quote="`")
conn <- dbConnect(drv, "jdbc:sqlserver://192.168.1.8\\TECHNOID;databaseName=WEBHIMS", "sa", "Design_20")

mstDoctor <-dbGetQuery(conn,"select * from mstDoctor")
write.table(mstDoctor, file = "mstDoctor.csv",row.names=FALSE, na="", sep=",")

HospitalInfo <-dbGetQuery(conn,"select * from HospitalInfo")
write.table(HospitalInfo, file = "HospitalInfo.csv",row.names=FALSE, na="", sep=",")

ip <-dbGetQuery(conn,"select * from ip")
write.table(ip, file = "ip.csv",row.names=FALSE, na="", sep=",")









