
#How are you...
#how is the session
#this has no effect


#like a quick calculator
3+4
#ignore
3*4+2

4**4

100/10

1:10
radius<-2

radius
area<-pi*radius**2
area



#Demo and handson for data types
#Vectors
#creating vectors

a<-1:10
a
mean(a)
median(a)
sum(a)
cumsum(a)
length(a)
a[3]
d<-rep(3,10)
length(d)
d

#vector operations
a
b
#adding two vectors
a+b
#adding a scalar to a vector
#single number
a+3
a*3
a
(a+b)   #enclosing in brackets directly prints he values


a
a<-5:50
a
mysquares<-a**2
mysquares
#formula : y=10a+5
y<-10*a+5
y

#formula 3a**2 +2a + 5
y<-3*a**2+2*a+5
y
######

c<-seq(5,50,5)
c
min(c)
max(c)
sort(c)
sort(c,TRUE)
c
#repeat values
d<-rep(c,times=3)
d
#repeat each value
e<-rep(c,each=3)
e
f<-c(e,55,55,55)
f
g<-c(d,e,f)
g
#creating vectors by concatenation
Names<-c("Amanda","Jenny","John","Jack")
#function c Concatenates the various elements into a single vector

weights<-c(76.24,67.56,89.65,56.76)
#the functon str is a very powerful function. 
#it provides the structure information the object
str(Names)
str(weights)
ages<-c(23,35,45,63)
str(ages)
maths_marks<-c(88L,75L,97L,56L)
str(ages)
str(maths_marks)
#another way of testing the type
is.numeric(ages)
is.numeric(maths_marks)
#integer is considered numeric but not vice versa
is.numeric(Names)
is.character(Names)
is.character(ages)
is.integer(maths_marks)
is.integer(ages)

#numeric - 10.345, 34.23, 10
#integer - 10 , 20, 34, 10.34

#vector operations
weights
weights+5
maths_marks
maths_marks*2
lab_marks<-c(10L,15L,20L,5L)
total_marks<-maths_marks+lab_marks
maths_marks
lab_marks
total_marks
#logical operations

lab_marks>10
weights
weights>70
lab_marks==10 #note the double equal sign
#subsetting
Names
#subsetting sincel elements
Names[3]
#multiple
subsetnames<-Names[2:4]
subsetnames
Names
lab_marks
lab_marks>10
Names[lab_marks>10]
#coercion  
#implicit 
marks<-c(10,'20',50)
marks
str(marks)
#explicit coercion

as.integer(marks)

myweight<-c(20.34,30.44,60.23,90.45)
myweight
as.integer(myweight)



#lists
#we already have the vectors of names, weights and ages
#now we can create lists to arrange them together
Names
weights
ages
patient1<-list(Names[1],weights[1],ages[1])
patient1
str(patient1)
#second patient
patient2<-list(Names[2],weights[2],ages[2])
patient2
str(patient2)

#named list
patient3<-list(name=Names[3],weight=weights[3],age=ages[3])
patient3
str(patient3)
#common operations on lists
#subsetting
patient1[1]
patient1[1:3] 
#from a named list
patient3['name']
patient3$age #patient3['age']
length(patient3)


#Data Frames
patients<-data.frame(Names,weights,ages)
str(patients)
patients
#subsetting
patients[1]
patients['Names']
patients$Names
patients[1:2]
patients[1,]
patients[weights>60,]

#attach and detach
df<-data.frame(col1=1:3,col2=c("a","b","c"),col3=c(TRUE,FALSE,TRUE))
df 
col2
df$col2
attach(df)
col2
col1
col3
detach(df)
col3

#adding a new colum
df$col4<-c(5,4,6)
df

#by default it print row numbers
#sometimes this can be clumsy if the data already has row number
#this can be turned off
print(df)
print(df,row.names = FALSE)
#extraction of single column
c4<-df$col4
c4


#matrix
Names
weights
patient_matrix<-rbind(Names,weights)
patient_matrix
ages
patient_matrix1<-cbind(Names,weights,ages)
patient_matrix1
#creating matrix using matrix() function
(seq(1,10))
num_matrix<-matrix(seq(1,10),2,5)
num_matrix
#by default the numbers are filled by column
#if byrow is set to TRUE then the numbers are filled by row
num_matrix<-matrix(seq(1,10),2,5,byrow=TRUE)
num_matrix
num_matrix1<-matrix(seq(1,10),2,byrow=TRUE)
num_matrix1

#matrix with all same values
same_matrix<-matrix(5,2,5)
same_matrix

#homogeneous nature of Matrix
row1<-c(2,"Name",30)
row2<-c(3,"age",50)
str(row1)
m1<-rbind(row1,row2)
m1
str(m1)

#matrix operations
#subsetting
num_matrix[ , ]
num_matrix[2,3]
num_matrix[2,]
num_matrix[,2]
patients
patients[1:2,]
patients[c(1,3),]

#summary
num_matrix
rowSums(num_matrix)
colSums(num_matrix)
colMeans(num_matrix) 

#matrix addition
num_matrix
num_matrix1
num_matrix+num_matrix1

#matrix multiplication

a<-matrix(1:4,2)
a
b<-matrix(5:8,2)
b
a*b   #individual elements get multiplied

#real mathematical matrix multiplication
a%*%b




num_matrix
#arrays
num_matrix1<-num_matrix
num_matrix2<-num_matrix
num_matrix3<-num_matrix
num_array<-array(c(num_matrix1,num_matrix2,num_matrix3),dim = c(2,5,3))
num_array
num_array[1,2,1]




