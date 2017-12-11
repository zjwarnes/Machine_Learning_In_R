#Various models




#Logistic Regression

#formula represents the relationship between the variables i.e. y ~ a * x + b
#data is the dataset giving values to these variables
#family is R object which specifies details of the model, it is "binomial" for logistic regression
#returns details of the model, use summary to see these

glm(formula,data,family)




#Normal Distribution

#x is a vector of numbers
#p is a vector of probabilities
#n is the number of observations
#mean is the mean value of the sample data, defaults to 0
#sd is the standard deviation the default is 1

#This function gives the height of the probability distribution at each point for a given mean and standard deviation
dnorm(x, mean, sd)

#This function gives the probabilits of a normally distributied random number to be less than the value of a given number is is also called 
#Cumulative Distribtuions Function
pnorm(x, mean, sd)

#This function takes the probability value and gives a number whose cumulative value matchs the probability value
qnorm(x, mean, sd)

#This function is used to generate random numbers whose distributions is normal
#it takes the sample size as input and generates that many random numbers
rnorm(x, mean, sd)






#Binomial Distribution

#x is a vector of numbers
#p is a vector of probabilities
#n is the number of observations
#size is the number of trials
#prob is the probability of success of each trial

#This function gives the probability density function at each point
#Integral of each of these points is 1
#centered around the mean, width is dependent on standard deviation
dbinom(x, size, prob)


#This function gives the cumulative probability of an event
#It is a single value representing the probability
#i.e. probability of getting 26 or less heads from 51 coin tosses
# pbinom(26, 51, 0.5) = 0.610116
pbinom(x, size, prob)

#this function takes the probability value and gives a number whose cumulative value matches the probability value
#i.e. how many heads will have a probability of 0.25 will come out when a coin is tossed 51 times
#qbinom(0.25, 51, 1/2) = 23
qbinom(p, size, prob)

#This function generates the given number of random values of a given probability from a given sample
#i.e. find 8 random vlaues from a sample of 150 with probability of 0.4
#rbinom(8,150, 0.4) = 58, 61, 59, 66, 55, 60, 61, 67
qbinom(n, size, prob)




#Poisson Regression

#formula is the symbolic representation of the relationship between the variables
#data is the dataset giving the values to these variables
#family is the R object which specifies the details of the model set to "poisson" for logistic regression
#this assumes the reponse variable (y) has a poisson distribution
#and the logarithm of its expected value can be modeled by a linear combination of unknown parameters
glm(formula, data, family)



#Analysis of covariance 

#provides analysis for how the input variables relates to the predicted results
aov(relation, data)

#compare the covariance of different models
anova(result1, result2)



#Time series Analysis

#data the values used in the time series
#start specifies the start time for the first observation in the time series
#end specifies the end time for the last observation in the time series
#frequency specifies the number of observations per unit time
#this will sequence the data point with a given frequency
#can input a matrix to have multiple series

ts(data, start, end, frequency)





#Nonlinear Least Square

#formula is the nonlinear model formula including variables and parameters
#data is the data frame used to evaluate the variables in the formula
#start is named list or names numeric vector of starting estimates
#i.e. start = list(b1 = 1, b2 =3) starting values (ideally randomized)

nls(formula, data, start)



#Decision Trees

#formula is the formula describing predictor and response variables
#data is the name of the dataset used
#relation is of the form y ~ a + b + c or similar

install.packages("party")
library(party)
ctree(formula, data)



#Random Forests

#formula is the formula describing predictor and response variables
#data is the name of the dataset used
#relation is of the form y ~ a + b + c or similar

install.packages("randomForest")
library(randomForest)
randomForest(formula,data)



#Survivial analysis
#predicting the time when an event occurs, known as failure time analysis

#time is the follow up time until the event occurs
#event indicates the status of occurences of expected event
#formula is the relationship between the predictor values


install.packages("survival")
library(survival)

Surv(time,event)
survfit(formula)

#EX:
# Create the survival object. 
survfit(Surv(pbc$time,pbc$status == 2)~1)
# Plot the graph. 
plot(survfit(Surv(pbc$time,pbc$status == 2)~1))





#Chi Square Tests
#used to determine if two categorical variables have a significant correlation between them
#Both varaibles should be from the same population and be categorical

data = table(var1, var2)
chisq.test(data)
#p values below 0.05 show a strong correlation
