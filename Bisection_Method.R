f=function(x){return(x^3-2*x-5)}
a=1
b=3
x=(a+b)/2
df=data.frame(a,b,x,f(a),f(x),f(a)*f(x))
for(i in 2:5){
  if(f(a)*f(x)<=0){b=x }
  else{ a=x}
  x=(a+b)/2
  df=rbind(df,data.frame(a,b,x,f(a),f(x),f(a)*f(x)))
}
df                
# ------------------------------------------------------
f=function(x){return(x*tan(x)+1)}
a=2
b=3
x=(a+b)/2
df=data.frame(a,b,x,f(a),f(b),f(a)*f(x))
for(chetan in 2:5 ){
  if(f(a)*f(x)<=0){b=x}
  else{a=x}
  x=(a+b)/2
  df=rbind(df,data.frame(a,b,x,f(a),f(b),f(a)*f(x)))
}
df
# -------------------------------














