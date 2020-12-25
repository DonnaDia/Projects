import pandas as pd

inventory = pd.read_csv('inventory.csv')

staten_island = inventory.head(10)

product_request = staten_island.product_description


seed_request = inventory[(inventory.location == 'Brooklyn') & (inventory.product_type == 'seeds')]

print(seed_request)
