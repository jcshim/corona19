y<-c(19:24)
v<-c(51,104,204,433,602,833)
plot(y,v)
lm(y ~ v)
f<- lm(v ~ y)
abline(f,col='red')
f
f$coefficients[[1]]
f$coefficients[[2]]
f$residuals #잔차
summary(f)
plot(y, v, xlim=c(19,30), ylim=c(0,1800), xlab = "date", ylab = "Pacients#") #25~30일 예측해 보기
abline(f, col='red')
title("Regresson of Day~Patients")
