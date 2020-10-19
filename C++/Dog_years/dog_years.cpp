#include <iostream>

int main() {
// Program works for dogs older than 2
  int dog_age = 12; 

  int early_years, later_years, human_years; 
  early_years = 21; 

  /* every dog year after 2 equals to this formula for a human*/
  later_years = (dog_age - 2) * 4;

  /* converting dog_years to human_years while
  calculating the total of dog years
  */
  human_years = early_years + later_years;

  std::cout << "My name is Tarja! Ruff ruff, I am " << human_years << " years old in human years.\n";
  
}
