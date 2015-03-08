##############
# Data Frame #
##############
# Similar to a spreadsheet with columns and rows

student.names <- c("john", "mary", "joe", "bill")
student.weights <- c(60.5, 72.5, 45.2, 47.5)
student.genders <- factor(c("Male", "Female","Male","Male"))
student.physics.marks <- c(70L,75L,80L,85L)
student.chemistry.marks <- c(60L,70L,85L,70L)

#Create data frame (all vectors should be the same length)
students <- data.frame(student.names, student.weights, student.genders,
                       student.physics.marks, student.chemistry.marks)

typeof(students)
students
str(students)
#student.names student.weights student.genders student.physics.marks student.chemistry.marks
#1          john            60.5            Male                    70                      60
#2          mary            72.5          Female                    75                      70
#3           joe            45.2            Male                    80                      85
#4          bill            47.5            Male                    85                      70


#Use stringsAsFactors = FALSE, to avoid conversion of character vector to factor
students <- data.frame(student.names, student.weights, student.genders,
                       student.physics.marks, student.chemistry.marks,
                       stringsAsFactors = FALSE)

str(students)


#Data Frame Operations
#Subsetting: Extract element(s) in a data frame
students[1] #Sngle brackets [] return element of same type
typeof(students[1])
students[[1]] #double brackets [[]] return the object in its own type
typeof(students[[1]])
students[["student.names"]] 
typeof(students[["student.names"]])
students$student.names #$ return the object in its own type
typeof(students$student.name)
students[1:3] #extract 1sfirstt three columns
students[c("student.physics.marks", "student.chemistry.marks")]
students
students[1,2] #Row number, Column number
students[1:3,1:2] #Rows 1-3, Cells 1-2
students[c(1,2),c(1,3)]
students[,1] #Get all values in column 1
students[1,] #Get all values in row 1
students[c(T,F,T,F),] #Get rows logically with all columns
students[student.genders == "Male",] 
students[student.physics.marks >= 75,]



##########
# Matrix #
##########
#Like Data Frame, except they are homogeneous only
#USed to store and process numeric data

student.physics.marks <- c(70L,75L,80L,85L)
student.chemistry.marks <- c(60L,70L,85L,70L)
student.marks <- rbind(student.physics.marks, student.chemistry.marks) #Row binding
student.marks
student.marks <- cbind(student.physics.marks, student.chemistry.marks) #Column Binding
student.marks
rownames(student.marks) <- c("john", "mary", "joe", "bill")
student.marks
str(student.marks)
student.marks <- matrix (c(70L, 75L, 80L, 60L, 85L, 70L, 85L, 70L), ncol=2,nrow=4) #
student.marks
student.marks <- matrix (c(70L, 75L, 80L, 60L, 85L, 70L, 85L, 70L), ncol=4,nrow=2
                         ,byrow=TRUE)
student.marks


#Operations performed on Matrix
student.marks <- cbind(student.physics.marks, student.chemistry.marks) #Column Binding
student.marks
rownames(student.marks) <- c("john", "mary", "joe", "bill")
student.marks

# Subsetting: Exttract element(s) from matrix
student.marks[,] #row number, column number
student.marks[2,2]
student.marks[2,]
student.marks[,2]
student.marks[1:3,]
student.marks[c(1,3),]
student.marks[c(T,F,F,T),]

#summary
student.marks
rowSums(student.marks) #Row wise sum
colSums(student.marks) #Column wise sum
colMeans(student.marks) #Column wise mean



#########
# Array #
#########
#Homogeneous
#Can be n-dimensional

class1.student.physics.marks <- c(70L,75L,80L,85L)
class1.student.chemistry.marks <- c(60L,70L,85L,70L)
class1.student.marks <- cbind(class1.student.physics.marks
                              ,class1.student.chemistry.marks) #Column Binding
class1.student.marks

class2.student.physics.marks <- c(50L,85L,70L,95L)
class2.student.chemistry.marks <- c(70L,60L,75L,80L)
class2.student.marks <- cbind(class2.student.physics.marks
                              ,class2.student.chemistry.marks) #Column Binding
class2.student.marks

student.marks <- array(c(class1.student.marks,class2.student.marks), dim=c(4,2,2))
student.marks

student.marks[2,2,2] #Row number, column number, sheet number
student.marks[1:3,2,] #Rows 1-3, column 1-2 for all sheets
