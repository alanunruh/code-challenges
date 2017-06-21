// Arrow functions lock the value of 'this' to the value it is outstide the statement

"use strict";

class Hello {
  constructor() {
    this.num = 2;
  }

  addTwo() {
    const addIt = () => {
      // arrow function lockst the value of 'this'
      this.num = this.num + 2;
    }
    addIt();
  }
}

const h = new Hello();
h.addTwo();
console.log(h.num);