weight = float(input("Please enter the weight to be shipped: "))

def ground_shipping(weight):
  cost = 0
  if weight <= 2:
    cost = weight * 1.50 + 20.00
  elif weight > 2 and weight <= 6:
    cost = weight * 3.00 + 20.00
  elif weight > 6 and weight <= 10:
    cost = weight * 4.00 + 20.00
  else: 
    cost = weight * 4.75 + 20.00
  return cost

premium_ground_shipping = 125.00

def drone_shipping(weight):
  cost = 0
  if weight <= 2:
    cost = weight * 4.50 
  elif weight > 2 and weight <= 6:
    cost = weight * 9.00 
  elif weight > 6 and weight <= 10:
    cost = weight * 12.00 
  else: 
    cost = weight * 14.25 
  return cost

def cheapest_method(weight):
  cheapest_method = ""
  cost = 0
  if ground_shipping(weight) < drone_shipping(weight) and ground_shipping(weight) < premium_ground_shipping:
    cheapest_method = "ground shipping"
    cost = ground_shipping(weight)
  elif drone_shipping(weight) < ground_shipping(weight) and drone_shipping < premium_ground_shipping:
     cheapest_method = "drone shipping"
     cost = drone_shipping(weight)
  else: 
     cheapest_method = "premium ground shipping"
     cost = premium_ground_shipping

  print(f'Cheapest method here is {cheapest_method}. It is ${round(cost,2)}.')

cheapest_method(weight)
