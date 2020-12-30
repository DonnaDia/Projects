-- SELECT * FROM orders LIMIT 5;
 -- checking distinct recent information 
/*
 select distinct order_date from orders
 order by order_date desc;
*/ 
-- verifying the notes
/*
 select special_instructions 
 from orders
 where special_instructions is not null
 order by 1 asc
 limit 20;
 */ 

-- checking any interesting sauceness
/*
 select special_instructions
 from orders 
 where special_instructions like '%sauce%';
*/

-- checking for doorness
/*
 select special_instructions
 from orders 
 where special_instructions like '%door%';
*/
 -- checking any boxes available
 /*
 select special_instructions
 from orders 
 where special_instructions like '%box%';
*/
-- visual madness
/*
select id as '#', special_instructions as 'Notes' from orders
where Notes is not null;
*/

sum_even product_odd cpp
#include <iostream>
#include <vector>

int main() {
  int sum_even = 0;
  int product_odd = 1;

  std::vector<int> numbers = {2, 4, 3, 6, 1, 9}; 

  for (int i = 0; i < numbers.size(); i++){
    if (numbers[i] % 2 == 0) {
      sum_even += numbers[i]; 
    } else {
      product_odd *= numbers[i];
    }
  }

  std::cout << sum_even << "\n" << product_odd << "\n";

}
