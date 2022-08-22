x=2+2
y
A
? mtcars
cor(mtcars$mpg,mtcars$wt)
#cor(mtcars$cyl,mtcars$mpg)
cor(mtcars)
library(corrplot)
corrplot(cor(mtcars))
corrplot(cor(mtcars$mpg~mtcars$wt~mtcars$cyl))




#simple Linear Regression
Reg=lm(mtcars$mpg~mtcars$wt)
summary(Reg)


#multiple linear regression
Reg1=lm(mpg~.,data=mtcars)
summary(Reg1)


step_Reg1=step(Reg1)
summary(step_Reg1)


View(mtcars)
