import numpy as np

#manual recipe ingredients input
cupcakes = np.array([2, 0.75, 2, 1, 0.5])

#input from a .csv file
recipes = np.genfromtxt('recipes.csv', delimiter=',')
print(recipes)

#checking eggs row
eggs = recipes[:, 2]
print(eggs)

#checking cookies column
cookies = recipes[2,:]
print(cookies)

#a double portion of cookies
double_batch = cookies * 2
print(double_batch)

grocery_list = cookies + double_batch
print(grocery_list)
