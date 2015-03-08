###############################
# One Dimenstional Structures #
###############################

# Data Structurs
#1. Atomic Vectors
#2. Factor
#3. List
#4. Data Frame
#5. Matrix
#6. Array

# Similar type of items
#   Homogeneous data structure
#     Atomic Vector --> 1D
#     Matrix --> 2D
#     Array --> nD
# Dissimilar type of items
#   Heterogeneous data structurs
#     List --> 1D
#     Data frame --> 2D

# Atomic Classes
#   Character ("A","c")
#   Numeric (4.35,5.12)
#   Integer (3,5)
#   Logical (True,False)
#   Complex (1 + 7i, 8 - 2i)

##################
# Atomic Vectors #
##################
# aka vectors
# Homogeneous
# 1-Dimensional arrangement of items
patient.fnames <- c("john", "sam") #Character
patient.fnames 
str(patient.fnames)
is.character(patient.fnames)

patient.weights <- c(135.5, 201) #Numeric
str(patient.weights)
is.numeric(patient.weights)

patient.length_of_stay <- c(3L, 10L) #Integer
str(patient.length_of_stay)
is.integer(patient.length_of_stay)

#integer is also numeric but converse may not be true
is.numeric(patient.length_of_stay) #integer is also considered as a numeric
is.integer(patient.weights) #but numeric vector may not be integer also

patient.discharged <- c(FALSE,TRUE) # Logical can use F or T shorthand
str(patient.discharged)
is.logical(patient.discharged)

complex.vector <- c(10+2i, -1+10i, 4+3i, 7+8i) #create complex vector
str(complex.vector) #get structure
is.complex(complex.vector) #test if complex vector

#Create atomic vectors using vector()
vector("character", length = 4) #default : empty string
vector ("numeric", length = 4) #default : 0
vector ("integer", length = 4) #defatul : 0
vector("logical", length = 4) #default : FALSE
vector ("complex", length = 4) #default : 0+0i


#Common operations on Atomic Vectors
#Extract element(s) from ataomic vectors (Subsetting)
patient.fnames <- c("john", "sam", "mary") #Character
patient.fnames[1] #1 based index, use [] to access elements
patient.fnames[2] #Extract second element
patient.fnames[1:3] #Extract multiple elements
patient.fnames[c(T,F,T)] #Extract multiple elements by specifiying a logical vector
patient.weights <- c(135.5, 201, 156)
patient.fnames[patient.weights >= 200]


#Coercions : converting one type to another
#Implicit Coercions
patient.weights <- c(135.5, 201, "156")
str(patient.weights)

#Explicit Coercions
#Sensible Coercions
as.numeric(patient.length_of_stay < 5)
as.character(patient.length_of_stay)
patient.weights <- c(60.5, 72.5, 45.2)
as.integer(patient.weights)

#Coercions which are not sensible
as.numeric(patient.fnames)


##########
# Factor #
##########
#Stores categorical values
# More efficient than integer
# Self describing
# Addtional levels can be created
# Some algos explicity demand factors instead of characters vectors

#Using factor
student.genders <- c("Male", "Male", "Female", "Female")
student.genders
student.genders <- c(2L,2L,1L,1L) #Integer vector
student.genders
student.genders <- factor(c("Male", "Male", "Female", "Female")) #Factorr
student.genders
as.numeric(student.genders) #Explicit conversion
student.blood.groups <- factor(c("A","AB","O","AB"), levels = c("A","B","AB","O"))
str(student.blood.groups)


########
# List #
########
# Heterogeneous

student.names <- c("john", "mary", "joe", "bill")
student.weights <- c(60.5, 72.5, 45.2, 47.5)
student.genders <- factor(c("Male", "Female","Male","Male"))
student.physics.marks <- c(70L,75L,80L,85L)
student.chemistry.marks <- c(60L,70L,85L,70L)

#Creating unamed list can contain items of different classes (heterogeneous)
student1 <- list(student.names[1], student.weights[1], student.genders[1],
                 student.physics.marks[1], student.chemistry.marks[1])
str(student1)
student1

#Creating named list
student1 <- list(name = student.names[1], 
                 weight = student.weights[1], 
                 gender = student.genders[1],
                 physics = student.physics.marks[1], 
                 chemistry = student.chemistry.marks[1])
str(student1)

student1 <- list(name = student.names[1], 
                 weight = student.weights[1], 
                 gender = student.genders[1],
                 marks = c(student.physics.marks[1], student.chemistry.marks[1]))

str(student1)


#Subsetting: Extract element(s) using unnamed list
student1 <- list(student.names[1], student.weights[1], student.genders[1],
                 student.physics.marks[1], student.chemistry.marks[1])
student1[1] #Single brackets [] return element of same type
typeof(student1[1])
student1[[1]] #double brackets [[]] return the object in its own type
typeof(student1[[1]])
student1[1:3] #Access multiple elements using index


#Subsetting: Extract element(s) using named list
student1 <- list(name = student.names[1], 
                 weight = student.weights[1], 
                 gender = student.genders[1],
                 physics = student.physics.marks[1], 
                 chemistry = student.chemistry.marks[1])
student1[["name"]]
student1$gender #Access element using element name or label
student1[c("physics","chemistry")] #Access multiple elements using label names

#Use length() to get number of elements
length(student1)





