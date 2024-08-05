# rm(ans)

z<-rnorm(1)
if(z>1)
{
  ans="big than 1"
}else
{
  ans="small than 1"
}
#---------------------------------------
for (i in 1:10)
{
  print('hi') 
}

#-----------------------------------------

z = c(22,33,44,55,66)
z
is.numeric(z)
is.integer(z)
is.double(z)


v = c(22L,33L,44L,55L,66L)
v
is.integer(v)
is.numeric(v)

v3 = c("google","training")
is.character(v3)
v4 = c("google",99.8)
v4

seq(1,15)
1:15
rep(2,20)  #### repeat....

v1<-c('ramesh','vlr','t','r','j','n','s')
v1
v1[1]
v1[-1]
v1[-3]
v1[1:3]
v1[c(2,4,6)]

#--------------------------------------------------------------------------
#A Company profit revenue and tax
####Data
revenue <- c(14574.49,7606.46,8611.41,9175.41,8058.65,8105.44,11496.28,9766.09,10305.32,14379.96,10713.97,15433.50)
expenses<- c(12051.82,5695.07,12319.20,12089.72,8658.57,840.20,3285.72,5821.12,6976.93,16618.61,10054.37,3803.96)

##profit for each month
profit <- revenue-expenses

####profit for each month (the tax rate is 30%)
tax <- profit*0.3
tax
pat <- profit-tax
pat
####profit margin for each month - equals to profit after tax divided by revenue 
pmem <- round(pat/revenue,2)*100
##pmem1<-round(pmem>,2)
pmem

##good months - where the profit after tax was greater than mean of the year

x<-mean(pat)
x
goodmonths<- pat>x
goodmonths
badmonths<- pat<x
badmonths
################3333
bestmonths <- pat==max(pat)
bestmonths
worstmonths <- pat==min(pat)
worstmonths
###############################3
revenue
expenses
profit
pat
pmem
goodmonths
badmonths
bestmonths
worstmonths

revenue1<-(round(revenue/1000,0))
expenses1<-(round(expenses/1000,0))
profit1<-(round(profit/1000,0))
pat1<-(round(pat/1000,0))
pmem
goodmonths
badmonths
bestmonths
worstmonths

m<-rbind (    revenue1,
         expenses1,
         profit1,
         pat1,
         pmem,
         goodmonths,
         badmonths,
         bestmonths,
         worstmonths
     )
m

###########matrix


b1<- c("name","age","height")
b2<- c("hemanth",23,"5.5")
b3<- c("bbbb",21,"5.3")
my.mat<-rbind(b1,b2,b3)
my.mat

#####################################3
library(ggplot2)
install.packages(ggplot2)
?qplot
hke<-read.csv("cars_4vars.csv")
hke
qplot(data=hke,main='cars',x=WT,y=MPG)

###############################################3333
cv<-read.csv("Lungcapdata.csv")
cv
head(cv)
tail(cv)
str(cv)
summary(cv)
cv$AgeRange
cs<-factor(cv$AgeRange)
cs
