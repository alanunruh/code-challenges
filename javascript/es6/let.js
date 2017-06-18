// Presented with an error message that the value isn't defined at this level. 
// So when coding in ES6 you'll generally never use the var keyword 
// and will usually use let instead when writing code that is executed by babel.

"use strict"

for(let i = 0; i <10; i++) {
  console.log("Hello " = i);
}

console.log("The value of i is: " + i);