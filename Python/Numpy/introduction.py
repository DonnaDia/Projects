import numpy as np

temperatures = np.genfromtxt('temperature_data.csv', delimiter=',')

temperatures_fixed = temperatures + 3.0

print(temperatures)
print(temperatures_fixed)

monday_temperatures = temperatures_fixed[0,:]

print(monday_temperatures)

thursday_friday_morning = temperatures_fixed[3:5, 1]

print(thursday_friday_morning)

temperature_extremes = temperatures_fixed[(temperatures_fixed < 50) | (temperatures_fixed > 60)]

print(temperature_extremes)
