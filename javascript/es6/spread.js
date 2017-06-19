// The spread operator can "destructure" a data structure. The spread operator has the ability
// to remove the enclosing structure of an array or a hash, but a way to get all of the properties.

// The spread operator builds a new array with an extra item (like 0 below) added at the beginning of the array.


"use strict";

const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
const newNumbers = [
  0,
  // include all the items inside the numbers array
  // without the enclosing array
  ...numbers
];

console.log(newNumbers);