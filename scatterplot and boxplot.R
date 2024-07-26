# scatter plot
df = read.csv("cars_4vars.csv")
df


plot(df$SP,df$MPG,pch=19,col='red')
cor(df$SP,df$MPG)

#
pairs(df)

################3 box plot 
boxplot(df$MPG,horizontal = TRUE, main = 'mpg')

boxplot(df$SP,horizontal = TRUE, main = 'sp')

boxplot(df$HP,horizontal = TRUE, main = 'hp')

boxplot(df$VOL,horizontal = TRUE, main = 'vol')

boxplot(df$WT,horizontal = TRUE, main = 'wt')

