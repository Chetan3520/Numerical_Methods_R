## Iterative Methods
### Gauss Jacobi Iterative Method:
A=matrix(c(4,1,1,1,5,2,1,2,3),nrow=3,ncol=3,byrow=T)
b=matrix(c(2,-6,-4),nrow=3)
x0=c(0,0,0)
x1=c(0,0,0)
err=1
m=x0
while(err>0.00001)
{
  x1[1]=(b[1]-A[1,2]*x0[2]-A[1,3]*x0[3])/A[1,1]
  x1[2]=(b[2]-A[2,1]*x0[1]-A[2,3]*x0[3])/A[2,2]
  x1[3]=(b[3]-A[3,1]*x0[1]-A[3,2]*x0[2])/A[3,3]
  err=max(abs(x0-x1))
  x0=x1
  m=rbind(m,x0)
}
m=data.frame(m)
row.names(m)=seq(0,nrow(m)-1,1)
m
#OR
A=matrix(c(45,2,3,-3,22,2,5,1,20),nrow=3,ncol=3,byrow=T)
b=matrix(c(58,47,67),nrow=3)
x0=c(0,0,0)
x1=c(0,0,0)
err=1
m=x0
while(err>0.0001){
  for(i in 1:3){
    x1[i]=(b[i]-(A[i,]%*%x0-A[i,i]*x0[i]))/A[i,i]
  }
  err=min(abs(x1-x0))
  x0=x1
  m=rbind(m,x0)
}
m=data.frame(m)
row.names(m)=seq(0,nrow(m)-1,1)
m
#Gauss-Seidel Iteration Method or Method of successive displacement.
A=matrix(c(45,2,3,-3,22,2,5,1,20),nrow=3,ncol=3,byrow=T)
b=matrix(c(58,47,67),nrow=3)
x0=c(0,0,0)
err=1
m=x0
for(j in 1:12){
  for(i in 1:3){
    x0[i]=(b[i]-(A[i,]%*%x0-A[i,i]*x0[i]))/A[i,i]
  }
  m=rbind(m,x0)
}
m=data.frame(m)
row.names(m)=seq(0,nrow(m)-1,1)
m