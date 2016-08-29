% Economics 5330 - Financial Econometrics
% Dr. Tyler J. Brough
% \today{}

# Introduction to Financial Econometrics

## What is econometrics?

- One simplistic approach: *econometrics is what econometricians do!*  
	+ This circular logic is unappealing to the serious student
- One might think it interesting that there are many different definitions of our subject.
	+ I think there is broad consensus 
	+ There is surprising disagreement 

## Greene's Definition 

William Greene, author of the most popular graduate textbook, has written that:

> Econometrics is the field of economics that concerns itself with the application of mathematical statistics and the tools of statistical inference to the empirical measurement of relationships postulated by economic theory.


## Kennedy's Definition

In his popular *A Guide to Econometrics*, Peter Kennedy states that:

> What distinguishes an econometrician from a statistician is the former's preoccupation with problems caused by violations of statisticians' standard assumptions; owing to the nature of economic relationships and the lack of controlled experimentation, these assumptions are seldom met. Patching up statistical methods to deal with situations frequently encountered in empirical work in economics has created a large battery of extremely sophisticated statistical techniques. 


## Lancaster's Definition

In his book *An Introduction to Modern Bayesian Econometrics*, Tony Lancaster states:

> An econometric analysis is the confrontation of an economic model with evidence... The objective of an econometric analysis is to answer two questions. The first question is whether the model is consistent with the evidence: this is called model criticism. This means asking whether any of the structures defined by the model are consistent with the evidence... Once this question has been answered the model can then be used for purposes of economic decision making, perhaps by a policy maker, perhaps by an individual economic agent.


## Pearl on Haavelmo

The computer scientist Judea Pearl has written about the Nobel Prize winning econometrician Trygve Haavelmo's conception of econometrics:

> What makes a piece of mathematical economics not only mathematics but also economics is, I believe, this: When we have set up a system of theoretical relationships and use economic names for the otherwise purely theoretical variables involved, we have in mind some actual experiment, or some design of an experiment, which we could at least imagine arranging, in order to measure those quantities in real economic life that we think might obey the laws imposed on their theoretical namesakes.

- *(Haavelmo, 1944, p. 5)*

## Summing Things Up

We can say at least the following:

- Econometrics is the empirical methodology of economics
- It is founded upon the tools of statistical inference 
- It deals with questions of economic causality and decision making
	+ Sometimes this is as simple as prediction and forecasting 
	+ Sometimes this requires a structural model 
- It relies on observational vs experimental data


## Summing Things Up Continued

We can say a few more things:

- It necessarily relies on computer implementation
	+ Thus we should know something about how this works!
- We can learn from other related fields
	+ Hal Varian on machine learning
	+ Some theorists have compared economic agents to signal processors

# Financial Econometrics

## What is financial econometrics?

Q: Okay, so how does financial econometrics differ from economic econometrics?


A: Good question!


## Campbell, Lo & MacKinlay on Financial Econometrics 

In the introduction to their popular graduate-level textbook Campbell, Lo and MacKinlay state:


> Financial economics is a highly empirical discipline, perhaps the most empirical among the branches of economics and even among the social sciences in general. This should come as no surprise, for financial markets are not mere figments of theoretical abstraction: they thrive in practice and play a crucial role in the stability and growth of the global economy. Therefore, although some aspects of the academic finance literature may seem abstract at first, there is a practical relevance demanded of financial models that is often waived for the models of other comparable disciplines.  


## CLM Continued

> Despite the empirical nature of financial economics, like the other social sciences it is almost entirely nonexperimental. Therefore, the primary method of inference for the financial economist is model-based statistical inference - financial econometrics. 


## CLM Continued

> While econometrics is also essential in other branches of economics, what distinguishes financial econometrics is the central role that uncertainty plays in both financial theory and its empirical implementation. The starting point for every financial model is the uncertainty facing investors, and the substance of every financial model involves the impact of uncertainty on the behavior of investors and, ultimately, on market prices. Indeed, in the absence of uncertainty, the problems of financial economics reduce to exercises in basic microeconomics. They very existence of financial economics as a discipline is predicated on uncertainty.


## CLM Continued

> This has important consequences for financial econometrics. The random fluctuations that require the use of statistical theory to estimate and test financial models are intimately related to the uncertainty on which those models are based... This close connection between theory and empirical analysis is unparalleled in the social sciences, although it has been the hallmark of the natural sciences for quite some time. **It is one of the most rewarding aspects of financial econometrics.**


## Summing Up Financial Econometrics

- Similar to standard financial econometrics it is founded on model-based statistical inference
- Uncertainty plays a central role, tightly coupling theory and empirical analysis, similar to natural sciences
- Of great practical relevance to investors and financial decision makers


## A Few More Things about Financial Econometrics

- Arbitrage relationships
- Measuring informational content of asset prices
- Usually based on time-series or panel data vs cross sectional data structures
- Possibility of very high-frequency observations (markets in real-time)


# Related Fields

## Machine Learning

- Hal Varian has argued that economists have much to learn from computer scientists about their use of machine
  learning
- Many quantitative finance jobs require a background in machine learning
- Here is a current example from [Jump Trading](http://www.jumptrading.com/apply.html?gh_jid=44296)
- Related to data science and data mining

## Statistical Signal Processing

- Many economic theorists have likened the role of the economic agent to "statistical signal processing" of financial asset prices
- Okay, so what is that?
- Recent IEEE SP/SPE Workshop organized by Dr. Todd Moon
	+ See Andy Lo's [slides](http://spw2015.coe.utah.edu/files/2015/10/slides20150811_final.pdf)
