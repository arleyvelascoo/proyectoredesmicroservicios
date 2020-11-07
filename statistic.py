import math
vec = [74001, 74003, 74015, 74000, 74005, 74002, 74005, 74004]
sum = 0
for i in range (len(vec)):
    sum = sum + vec[i]
media = sum / len(vec)

moda = 74005

sum1 = 0
for i in range (len(vec)):
    sum1 = sum1 + pow((vec[i]-media),2)
varianza = sum1 / (len(vec) - 1)
desviacion = pow(varianza, 1/2)

print(moda)
print(media)
print(varianza)
print(desviacion)