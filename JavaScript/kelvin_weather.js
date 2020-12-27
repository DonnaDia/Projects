// forecast in Kelvin
const kelvin = 293;
// measures convertion
const celsius = kelvin - 273;
// Fahrenheit calculation formula
let fahrenheit = Math.floor(celsius * (9 / 5) + 32)

console.log(`The temperature is ${fahrenheit} degrees Fahrenheit.`)
