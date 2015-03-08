# Functions #
#Reusability & Abstraction
#Naming Guidelines: Pascal casing with no dots or underscores

GetTotalMarks <- function(quiz.marks, viva.marks) {
  
  total.marks <- quiz.marks + viva.marks
  total.marks #return value, return keyword not necessary
}

student.physics.quiz.marks <- c(70L, 75L, 80L, 85L)
student.physics.viva.marks <- c(7L, 5L, 8L, 6L)
student.physics.total.marks <- GetTotalMarks(student.physics.quiz.marks, student.physics.viva.marks)

student.physics.total.marks


#Argument matching or Argument mapping
#values passed from function invocation to arguments in the function definition
#match by position
#match by name
#GetTotalMarks <- function (quiz.marks, viva.marks)
# GetTotalMarks (quic.marks = c(), viva.marks = c())

#Default Arguments
#Argument not required to specify in the function call
GetTotalMarks <- function(quiz.marks, viva.marks, assignment.marks = 5L){
  total.marks <- quiz.marks + viva.marks + assignment.marks
  total.marks #return value, return keyword not necessary
}


# Ellipsis
# ..., means "anything else"
# Should be last argument in the function
GetTotalMarks <- function(quiz.marks, viva.marks, assignment.marks=5L, ...) {
  total.marks <- quiz.marks + viva.marks + assignment.marks + sum(...)
  extra.arguments <- list(...)  #Using the additional arguments
  print(extra.arguments)
  total.marks
}

GetTotalMarks(quiz.marks = c(10L, 50L, 25L, 80L), viva.marks = c(50L, 85L, 71L, 52L),
              assignment.marks = c(30L, 89L, 90L, 98L), creativity.marks = 2)

GetTotalMarks(quiz.marks = c(30L, 89L, 90L, 98L), viva.marks = c(80L, 57L, 87L, 88L),
              assignment.marks = c(45L, 80L, 67L, 86L), creativity.marks = 2,
              attendance.marks = 3)


#Lazy Evaluation
#expression evaluation deferred until it is first used


#Multiple Return Values
#Use list with a return statement

GetMarksSummary <- function (quiz.marks, viva.marks) {
  total.marks <- quiz.marks + viva.marks
  avg.marks <- mean(total.marks)
  return(list(total = total.marks, average = avg.marks))  
}

GetMarksSummary(quiz.marks = c(70L, 75L, 80L, 85L), viva.marks = c(7L, 5L, 8L, 6L))


#Functions as Objects
#Functions are first class objects
#Look into them, assign them, pass them as aruguments 

GetTotalMarks <- function(quiz.marks, viva.marks){
  total.marks <- quiz.marks + viva.marks
  total.marks
}

#01 Look into them
GetTotalMarks #Return the function itself
formals(GetTotalMarks) #Access arguments
body(GetTotalMarks) #Access body

#02 Assign them
MyGetTotalMarks <- GetTotalMarks
MyGetTotalMarks

#03 Use them as arguments to another function
GetTotalMarks(quiz.marks = c(70L,75L,80L,85L), viva.marks = c(7L, 5L, 8L, 6L))

#pass the function as argument in do.call function
do.call(GetTotalMarks, list(quiz.marks = c(70L,75L,80L,85L),
                            viva.marks = c(7L, 5L, 8L, 6L)))


#Anonymous Function
#Function witout a name
#Use it if you have to create a small function

#Named function
GetTotalMarks <- function(quiz.marks, viva.marks){
  total.marks <- quiz.marks + viva.marks
  total.marks
}

#using named function
do.call(GetTotalMarks, list(quiz.marks = c(70L,75L,80L,85L),
                            viva.marks = c(7L, 5L, 8L, 6L)))


#using anonymous function
do.call(function(quiz.marks, viva.marks) {
        quiz.marks + viva.marks
}, list(quiz.marks = c(70L,75L,80L,85L), viva.marks = c(7L, 5L, 8L, 6L)))





