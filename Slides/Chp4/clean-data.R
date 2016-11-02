## Read in the raw data
setwd("~/USU/Teaching/Fall2016/Ecn5330/Slides/Chp4")
data <- read.csv("macro-unix.csv")
data$Date <- as.Date(as.character(data$Date), "%m-%d-%Y")
n <- nrow(data)

## Transform the variables
dspread <- diff(data$BAA.AAA.SPREAD)
dcredit <- diff(data$CONSUMER.CREDIT)
dprod <- diff(data$Industrial.production)
rmsoft <- 100 * diff(log(data$Microsoft))
rsandp <- 100 * diff(log(data$SANDP))
dmoney <- diff(data$M1MONEY.SUPPLY)
inflation <- 100 * diff(log(data$CPI))
term <- data$USTB10Y - data$USTB3M
dinflation <- diff(inflation)
mustb3m <- data$USTB3M / 12
rterm <- diff(term)
ermsoft <- rmsoft - mustb3m[2:n]
ersandp <- rsandp - mustb3m[2:n]
macro.data <- data.frame(ermsoft = ermsoft, ersandp = ersandp, dprod = dprod, dcredit = dcredit,
                         inflation = inflation, dmoney = dmoney, dspread = dspread, rterm = rterm)

## Run the regression
fit <- lm(ermsoft ~ ersandp + dprod + dcredit + inflation + dmoney + dspread + rterm, data = macro.data)
summary(fit)