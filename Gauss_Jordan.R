A=matrix(c(1,1,1,4,3,-1,3,5,3), nrow=3,byrow=T)
b=diag(3)
A=cbind(A,b)
print(A)
if(A[1,1]!=0){
  A[2,]=A[2,]-A[2,1]/A[1,1]*A[1,]
  A[3,]=A[3,]-A[3,1]/A[1,1]*A[1,]
  print(A)}
if(A[2,2]!=0){
  A[3,]=A[3,]-A[3,2]/A[2,2]*A[2,]
  A[1,]=A[1,]-A[1,2]/A[2,2]*A[2,]
  print(A)}
if(A[3,3]!=0){
  A[2,]=A[2,]-A[2,3]/A[3,3]*A[3,]
  A[1,]=A[1,]-A[1,3]/A[3,3]*A[3,]
  print(A)}
A=A/diag(A)
print(A)