#MULTIPLE LINEAR REGRESSION#
# It is the extension of simple linear regression with multiple variable with given equations:
#  y= a + b1x1 + b2x2 +...bnxn
# Where,
# y is the response variable.
# a (intercept), b1, b2...bn are the coefficients.
# x1, x2, ...xn are the predictor variables.

#Input dataset for construction of the regression model#
  input <- mtcars[,c("mpg","disp","hp","wt")]   #Dataset present in R#
  print(head(input))

#Create a relationship between the variables#
  model <- lm(mpg~disp+hp+wt, data=input)
  print(model)

# Get coefficient value for generation of the mathematical equations#
  a <- coef(model)[1]
    print(a)
  Xdisp <- coef(model)[2]
  Xhp <- coef(model)[3]
  Xwt <- coef(model)[4]
    print(Xdisp)
    print(Xhp)
    print(Xwt)
    
#Lets create a mathematical equations using above Linear regression equations and with coefficient generated by the model#
  Y = a+Xdisp.x1+Xhp.x2+Xwt.x3
  
#Now add coefficient values in the above equations#
  Y = 37.15+(-0.000937)*x1+(-0.0311)*x2+(-3.8008)*x3

#Let us assume we have new data (test data) of X1= 221, X2= 110, X3= 3.29.
  Y = 37.15+(-0.000937)*221+(-0.0311)*110+(-3.8008)*3.29.
  
  Y = 21.017291
  

