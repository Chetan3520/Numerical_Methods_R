f=function(x){return(x^2-4*x-7)}
dif=function(x){return(2*x-4)}
x1=5
e=1
x2=x1-f(x1)/dif(x1)
df=data.frame(x1,f(x1),dif(x1),x2)
while(e>0.5){
  e=abs(x2-x1)
  x1=x2
  x2=x1-f(x1)/dif(x1)
  df=rbind(df,data.frame(x1,f(x1),dif(x1),x2))
}
df
# ------------------
f=function(x){return(x*sin(x)+cos(x))}
dif=function(x){x*cos(x)}
x1=pi
e=1
x2=x1-f(x1)/dif(x1)
df=data.frame(x1,f(x1),dif(x1),x2)
while(e>0.04){
  e=abs(x2-x1)
  x1=x2
  x2=x1-f(x1)/dif(x1)
  df=rbind(df,data.frame(x1,f(x1),dif(x1),x2))
}
df



