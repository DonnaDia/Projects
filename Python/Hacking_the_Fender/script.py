import csv

compromised_users = []

with open("passwords.csv", 'r') as password_file:
  password_csv = csv.DictReader(password_file)
  
