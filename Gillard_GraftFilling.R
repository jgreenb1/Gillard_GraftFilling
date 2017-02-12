###### Loading data
subject<-1:4
before<-c(3.038,3.136,3.584,3.528)
after<-c(5.115,5.376,4.836,6.851)

###### Formatting data
data<-as.data.frame(cbind(subject,before,after))

boxplot(data$before,data$after)

## H0 = mean difference before and after grafting is 0
t.test(data$before,data$after,mu=0,alt="two.sided",paired=T,conf.level=0.95)
