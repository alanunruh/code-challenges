// The spread operator on objects can take all the keys but override (or add) other properties. 
// It's similar to the merge method in Ruby.

"use strict";

const person = {
  name: "Ken",
  age: 29,
  status: "active"
};

const accountSettings = {
  ... person,
  status: "inactive",
  mood: "happy"
};

console.log(accountSettings);