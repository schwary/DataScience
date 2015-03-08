#One dimenstional set of values of similar type
student.marks <- c(10,20,30,40) # using "combine" function to create a vector by combining discrete values

#######################
#Vectorized Operations#
#######################

#Produce a scalar result, Vector of length 1
#mean(V)
#V={E1,E2,E3} --> E=(E1+E2+E3)/3

#Produce a vector result
#sqrt(V)
#V={E1,E2,E3} --> Vector result {sqrt(E1),sqrt(E2),sqrt(E3)}
#Input Vector has length of 3 and Output Venctor has length of 3

# Opeartor 
#Input multiple vectors, output single vector
#V1={E11,E12,E13}
#V2={E21,E22,E23}
#V3={E31,E32,E33}

#V1 + V2 + V3 --> V={(E11 + E21 + E31),
#                    (E11 + E21 + E31),
#                    (E11 + E21 + E31)}


student.marks <- c(10, 20, 30, 40) #using combine function
student.marks #print variable content

#Vectorized operation :Flaver 1: INput - Singele Vector, Output - Scalar
mean(student.marks)
#Vectorized operation :Flaver II: Input - Single Vector, Output - Single Vector
student.marks <- student.marks + 5 
student.marks
student.marks >= 30
#Vectorized operation : Flavor III: INput - Multiple vectors, output - Single vector
student.physics.marks <- c(20,40,30,50)
student.chemistry.marks <- c(30,20,50,20)
student.total.marks <- student.physics.marks + student.chemistry.marks #addition
student.total.marks
