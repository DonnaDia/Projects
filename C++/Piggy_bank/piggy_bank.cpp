#include <iostream>

int main() {
  
  double pesos, reais, soles, dollars;

  std::cout << "Enter number of Colombian Pesos: ";
  std::cin >> pesos; 

  std::cout << "Enter number of Brazilian Reais: ";
  std::cin >> reais; 

  std::cout << "Enter number of Peruvian Soles: ";
  std::cin >> soles; 

  /* Conversion to USD: 
     Reais = 0.18
     Pesos = 0.00026
     Soles = 0.28    */

  dollars = (0.18*reais) + (0.00026*pesos) + (0.28*soles);

  std::cout << "Total US Dollars = $" << dollars << "\n";
}
