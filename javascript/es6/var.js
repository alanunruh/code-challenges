// var sneaks the value outside the scope and it displays the value of i is 10 in the console

"use strict";

for(var i = 0; i < 10; i++) {
  console.log("Hello " + i);
}

console.log("The value of i is: " + i);