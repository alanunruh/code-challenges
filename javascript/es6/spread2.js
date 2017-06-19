// This will output a new array containing all the items of the previous array but a new item at the end. 
// This will build the array of all the numbers from 1 to 10, because it will insert the 10 value at the end.

"use strict";

const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
const newNumbers = [
  // include dall the items inside the numbers array
  // without the enclosing array
  ...numbers,
  10
];

console.log(newNumbers)