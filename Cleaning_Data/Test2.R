library(httr)

# 1. Find OAuth settings for github:
#    http://developer.github.com/v3/oauth/
oauth_endpoints("github")

# 2. To make your own application, register at
#    https://github.com/settings/developers. Use any URL for the homepage URL
#    (http://github.com is fine) and  http://localhost:1410 as the callback url
#
#    Replace your key and secret below.
myapp <- oauth_app("github",
                   key = "d8b3a671e1b5577534f5",
                   secret = "71e3a8166a43e6df8c73fc33327b2a4818724836"
)

# 3. Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# 4. Use API
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
#stop_for_status(req)
#content(req)


file_urls = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"

download.file(file_urls, destfile = "./test2data1.csv", method='curl')
acs= read.table('test2data1.csv', sep = ',', header = TRUE)

View(acs)

install.packages('dbConnect')
dbSendQuery(acs,"select * from acs")

file_urls = "http://biostat.jhsph.edu/~jleek/contact.html"
htmlCode = readLines(file_urls)
close(con)
nchar(htmlCode)[10]

nchar(htmlCode)[20]

nchar(htmlCode)[30]

nchar(htmlCode)[100]

file_urls='https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for'

df2 = read.fwf(file_urls, widths= 5, sep='\t')
View(df2)
