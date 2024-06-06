#---------importing data from csv file
df= read.csv("E:/Python/lungcapdata.csv",header = T)
df
df$LungCap
head(df)
tail(df)

mean(df$LungCap)
median(df$LungCap)
sd(df$LungCap)
summary(df$LungCap)

dim(df)
summary(df)

df$Smoke= as.factor(df$Smoke)
df$Smoke
df$Gender= as.factor(df$Gender)
df$Gender
summary(df)

