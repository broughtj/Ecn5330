
# Set your current working directory
setwd("C:\\Users\\brough\\Desktop\\Ecn5330\\Assignments\\Hwk2")

# Read in the data to a DataFrame
capm.data <- read.csv("capm.csv")


# Tranform Prices into Continuously Compounded Returns
Rm <- diff(log(capm.data$SANDP))
Rford <- diff(log(capm.data$FORD))
Rf <- capm.data$USTB3M / 100

## Get Rm in Excess Returns
Rm <- Rm - Rf
Rford <- Rford - Rf

# Create a DataFrame
ford.data <- data.frame(Rm=Rm, Rford = Rford)

# Run the CAPM
fit.ford <- lm(Rford ~ Rm, data = ford.data)
summary(fit.ford)
  
# Extract the Coefficients
beta <- coef(fit.ford)[2]
beta.se <- coef(summary(fit.ford))[, "Std. Error"][2]
  
  
  
  
  
  
  


