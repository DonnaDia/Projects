const input = 'a whale of a deal!';
const vowels = ['e', 'u', 'i', 'o', 'a'];
let resultArray = [];

for (i = 0; i < input.length; i++){
  for (j = 0; j < vowels.length; j++){
    if (input[i] === vowels[j]){
      if(input[i] === 'e'){
        resultArray.push('ee');
      } else if (input[i] === 'u'){
        resultArray.push('uu');
      } else {
        resultArray.push(input[i]);
      }
    }
  }
}
resultArray = resultArray.join('').toUpperCase();
console.log(resultArray);
