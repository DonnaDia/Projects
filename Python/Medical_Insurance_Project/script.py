age = 28;
sex = 0;
bmi = 26.2;
num_of_children = 3;
smoker = 0;

insurance_cost = (250 * age) - (128 * sex) + (370 * bmi) + (425 * num_of_children) + (24000 * smoker) - 12500

print(f"This person's insurance cost is {insurance_cost} dollars.")

# Age Factor
age += 4;
new_insurance_cost = (250 * age) - (128 * sex) + (370 * bmi) + (425 * num_of_children) + (24000 * smoker) - 12500

change_in_insurance_cost = new_insurance_cost - insurance_cost
print(f"The change in cost of insurance after increasing the age by 4 years is {new_insurance_cost} dollars.")
# BMI Factor
age -= 4 #getting age back
bmi += 3.1

new_insurance_cost = (250 * age) - (128 * sex) + (370 * bmi) + (425 * num_of_children) + (24000 * smoker) - 12500

change_in_insurance_cost = new_insurance_cost - insurance_cost

print(f"The change in estimated insurance cost after increasing BMI by 3.1 is {change_in_insurance_cost} dollars.")
# Male vs. Female Factor
bmi -= 3.1 #getting bmi back
sex = 1
new_insurance_cost = (250 * age) - (128 * sex) + (370 * bmi) + (425 * num_of_children) + (24000 * smoker) - 12500

change_in_insurance_cost = new_insurance_cost - insurance_cost

print(f"The change in estimated cost for being male instead of female is {change_in_insurance_cost} dollars.")