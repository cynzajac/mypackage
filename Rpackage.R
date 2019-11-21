n = 10
k =
O = 

##The Poisson parameter Lambda (λ) is the total number of events (k) 
##divided by the number of units (n) in the data (λ = k/n)

#lamb = k/n

Dz = 

delta <- function(n){
1/(12*n) - 1/(360*n^3) + 1/(1260*n^5)
}

D0 <- function(e){ ###if e is not close to 1
  e*log(e) + 1 - e
}

#D0(10)

r <- function(x,lamb){ ##user needs to provide x and lamb
  (1/sqrt(2*pi*x))*exp(-delta(x)-lamb*D0(x/lamb))
}

dpois(58, 3.86)

r(58,3.86)
r(4,4)
r(1234567,1234567)
r(1234568,1234567)

system.time(r(4,4))

dpois(4, 4)
dpois(1234567,1234567)#)
dpois(12,1234567)
dpois(1234568,1234567)




system.time(dpois(4, 4))
system.time(dpois(1234567,1234567))

system.time(r(58,3.86))
system.time(dpois(58, 3.86))
#P(X = x) = ((lamb ^x)/x!)*e^-(lamb)
