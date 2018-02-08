#basic linear regression
visitors=c(2728,2098,2111,2009,3635,4171,5244,3695,3088,2674,3591,3013,5045,6118,2851,2698,3015,3409,3179,5510,6232,3211,2582,2710,2115,3515,6665,6239,2862,2665);
Num_burger=c(566,444,454,440,760,881,1091,783,666,564,750,650,1054,1245,616,564,652,704,683,1125,1294,676,557,568,450,748,1371,1297,615,568);

#create data frame
burger = data.frame(visitors,Num_burger) 
head(burger)
summary(burger)

plot(burger$visitors,burger$Num_burger,col="red",main='Visitors vs Sales scatter plot')

burgerReg =lm(burger$Num_burger ~ burger$visitors)
burgerReg
abline(burgerReg)
summary(burgerReg)

#check accuracy
summary(burgerReg)$r.squared

####completion of modeling 
predictedsales<-predict(burgerReg, burger)
predictedsales
results<-cbind(burger,predictedsales,error=Num_burger-predictedsales)
results
