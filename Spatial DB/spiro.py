import math
R = 5
r = 1
a = 4
pi = math.pi
nrev = 10
t = float(0)
while (t < nrev*pi):
    x = (R+r)*math.cos((r/R)*t) - a*math.cos((1+r/R)*t)
    y = (R+r)*math.sin((r/R)*t) - a*math.sin((1+r/R)*t)
    print(str(-118.28920 + 0.001*y) + ',' + str(34.02115 + 0.001*x) + ',100.')
    t = t + 0.1