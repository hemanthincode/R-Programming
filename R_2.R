library(foreign)             #calling the libraries with in R environment
install.packages("foreign")         #calling the libraries internet

df = read.csv("banking.csv")
df
dim(df)
head(df)
colnames(df)
str(df)

install.packages("dplyr")
library(dplyr)
str(df)

columns_to_convert= c("job",
                      "marital",
                      "education",
                      "default",
                      "housing",
                      "loan",
                      "contact",
                      "month",
                      "day_of_week",
                      "poutcome",
                      "y")
df = df %>%
  mutate(across(all_of(columns_to_convert),as.factor))

str(df)

# Histogram

hist(df$age,main = "Age of the employees", xlab = "Age")

hist(df$age,main = "Age of the employees", xlab = "Age", col = ("red"))

t1 = table(df$marital)
t1

custom_colors = c("red","green","yellow","purple")

barplot(t1,
        main = "maritalstatus",
        xlab = "category",
        ylab = "count",
        col = custom_colors)

t2 = table(df$education)
t2

barplot(t2,
        main = "education",
        xlab = "category",
        ylab = "count",
        col = custom_colors)

#----------->install.packages()


install.packages("ggplot2")

library(ggplot2)


ggplot(df, aes(x = education))

ggplot(df, aes(x = education))+
  geom_bar (aes (y=age, fill="age"), stat = "identity")+ 
  labs (title="staked bar chart", x = "category", y = "value")+ 
  scale_fill_manual (values = c("age" = "blue"))+
  theme_minimal()