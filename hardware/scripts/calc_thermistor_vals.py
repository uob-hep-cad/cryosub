#!/usr/bin/python
import math

def rt(R0,beta,T):
    T0 = 298.15
    #print(T)
    r = R0*math.exp(beta*(1/T - 1/T0))
    #print(r)
    return r

for temp in range(100,330):
    print (temp,rt( R0=10000 , beta=3370, T=temp))

T0Cent = 273.15

print ("Rt at -25 degC = ",rt( R0=10000 , beta=3370, T=T0Cent-25))

print ("Rt at +20 degC = ",rt( R0=10000 , beta=3370, T=T0Cent+20))
