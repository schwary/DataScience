################
# Environments #
################

assign("match.score", 325)
match.score
get("match.score", globalenv())

#Create Custom environment
my.environment <- new.env()
parent.env(my.environment)

#Assign a variable in custom environment
assign("match.score",250,my.environment)

#Get varialbe from custom envrionement
get("match.score",my.environment)

#############
# Operators #
#############
# +, -, *, /, ^, %%, %/%
format(10 ^ 5, scientific=FALSE) #without scientific notation
10 %% 3 # Modulus
10 %/% 3 # INteger division

#Mathmatical functions
abs(-5)
log(2)
log(2,base=10)
exp(5)
factorial(5)

#Special constants
pi #PI
options() #Get global options
options(digits=10) #set digits to 10
pi #PI



###################
# Special numbers #
###################

#Infinity
1 / 0 #positive infinity
-1 / 0 #negative infinity
Inf + 5 #Operation on Inf
is.finite(1 / 0) #Check if finite
is.infinite(1 / 0) #Check for infinite

#Undefined
Inf / Inf #NaN (Not a Number)
is.nan(Inf/Inf) #Check for NA

#Missing values
NA + 5 #Operation on NA
is.na(NA) #Check if NO

#NaN is NA, but NA is not NaN
is.na(NaN) #Check if NaN is NA
is.nan(NA) #Check if NA is NaN


##################
#Logican Operator#
##################
# >, >=, <, <=, ==, !=

"b" > "a" #comparing characters
!(TRUE) #logical NOT operator
TRUE | FALSE #logical OR operator
TRUE & FALSE #logical AND operator



