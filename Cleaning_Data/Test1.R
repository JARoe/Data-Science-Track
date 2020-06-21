library(data.table)
file_urls = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(file_urls, destfile = "./test1data.csv", method='curl')

df= read.table('test1data.csv', sep = ',', header = TRUE)
setDT(df)
length(which(df[,VAL==24] == TRUE))

library("readxl")
file_urls = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(file_urls, destfile = "./test1data2.csv", method='curl')
colIndex=7:15
rowIndex=18:23
dat = read_excel('test1data2.xlsx', sheet = 1, range = "G17:O23", col_names = TRUE)
sum(dat$Zip*dat$Ext,na.rm=T)

file_urls = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
download.file(file_urls, destfile = "./test1data.xml", method='curl')
df2 = read_excel('test1data.xml', col_names = TRUE)
View(df2)

file_urls = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(file_urls, destfile = "./test1data3.csv", method='curl')

DT = fread("test1data3.csv")

mean(DT$pwgtp15, by=DT$SEX)

sleep_for_a_minute <- mean(DT$pwgtp15, by=DT$SEX)
start_time <- Sys.time()
sleep_for_a_minute()
end_time <- Sys.time()
end_time - start_time

sleep_for_a_minute <- rowMeans(DT)[DT$SEX==1];rowMeans(DT)[DT$SEX==2] { Sys.sleep(60) }

start_time <- Sys.time()
sleep_for_a_minute()
end_time <- Sys.time()
end_time - start_time
DT[,mean(pwgtp15), by=SEX]

sleep_for_a_minute <- DT[,mean(pwgtp15), by=SEX]  { Sys.sleep(60) }
start_time <- Sys.time()
sleep_for_a_minute()
end_time <- Sys.time()
end_time - start_time


if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install()

BiocManager::install('rhdf5')
library(rhdf5)
> created = h5createFile('example.h5')
> created


