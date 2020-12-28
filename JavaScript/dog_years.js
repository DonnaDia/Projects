// how old I am
const myAge = 25;

// initial value that'll be changed
let earlyYears = 2;
earlyYears *= 10.5;

// initial value that'll be changed
let laterYears = myAge - 2;
laterYears *= 4;

// myAge in dog years
const myAgeInDogYears = earlyYears + laterYears;

// my name in small letters
const myName = 'Santa'.toLowerCase();
// result
console.log(`My name is ${myName}. I am ${myAge} years old in human years which is ${myAgeInDogYears} years old in dog years.`);
