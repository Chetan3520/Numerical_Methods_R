# Trapezoidal method
f=function(x){return(1/(1+x))}
a=0;b=1;n=6;h=(b-a)/n
x=seq(a,b,h)
y=f(x)
s1=y[1]+y[n+1]
s1=h/2*(s1+2*sum(y[seq(2,n,1)]))
s1
# output 0.6948773
# ------------------------------------
# Simphson 1/3 rd Method
f=function(x){return(1/(1+x))}
a=0;b=1;n=6;h=(b-a)/n
x=seq(a,b,h)
y=f(x)
print(y)
s1=y[1]+y[n+1]
s1=(h/3)*(s1+4*sum(y[seq(2,n,2)])+2*sum(y[seq(3,n,2)]))
s1
# output 0.6931698
# ________________________________________________________________
# simphson 3/8th method
f=function(x){return(1/(1+x))}
a=0;b=1;n=6;h=(b-a)/h
x=seq(a,b,h)
y=f(x)
a=seq(4,n,3);a #multiple of 3 (seq is  0,1,2,3,4,5,6 )
b=seq(2,n,1)
b=b[!b %in% a];b#not multiple of 3
s1=y[1]+y[n+1]
s1=(3*h/8)*(s1+3*sum(y[c(b)])+2*sum(y[c(a)]))
s1
#Output 0.6931953
