#include <iostream>
#include <cstdlib>

int main() {

  // Your future is here
  std::cout << "MAGIC 8-BALL:\n\n";
  srand(time(NULL));
  int answer = std::rand() % 10;


  if (answer == 1) {
    std::cout << "It is certain.\n";
  } else if (answer == 2) {
    std::cout << "Without a doubt.\n";
  } else if (answer == 3) {  
    std::cout << "Most likely.\n";
  } else if (answer == 4) {  
    std::cout << "Signs point to yes.\n";
  } else if (answer == 5) {
   std::cout << "Concentrate and ask again.\n";
  } else if (answer == 6) { 
   std::cout << "My reply is no.\n";
  } else if (answer == 7) {  
   std::cout << "My sources say no.\n";
  } else if (answer == 8) {
   std::cout << "As I see it, yes.\n";       
  } else {
    std::cout << "Very doubtful.\n";
  };

}
