f=function(x){return(x^2-x-2)}
x0=0
x1=1
x2=x1-((x1-x0)/(f(x1)-f(x0)))*f(x1)
print(x2)
#x2=x1-(x1-x0)*f(x1)/(f(x1)-f(x0))
df=data.frame(x0,x1,f(x0),f(x1),x2)
e=1
while(e>0.001){
  e=abs(x2-x1)
  x0=x1
  x1=x2
  x2=x1-((x1-x0)/(f(x1)-f(x0)))*f(x1)
  df=rbind(df,data.frame(x0,x1,f(x0),f(x1),x2))
}
df
# -------------
f=function(x){return(x^5-3*x^4+5*x-8)}
x0=0
x1=1
x2=x1-(x1-x0)*f(x1)/(f(x1)-f(x0))
df=data.frame(x2,f(x2))
e=1
while(e>=0.0003){
  e=abs(x2-x1)
  x0=x1
  x1=x2
  x2=x1-(x1-x0)*f(x1)/(f(x1)-f(x0))
  df=rbind(df,data.frame(x2,f(x2)))
}
df

# ----------------------
f=function(x){return(x^2-x-2)}
x0=1
x1=3
x2=x1-(x1-x0)*f(x1)/(f(x1)-f(x0))
df=data.frame(x0,x1,f(x0),f(x1),x2)
e=1
while(e>=0.0003){
  e=abs(x2-x1)
  x0=x1 
  
  x1=x2
  x2=x1-(x1-x0)*f(x1)/(f(x1)-f(x0))
  df=rbind(df,data.frame(x0,x1,f(x0),f(x1),x2))
}
df











