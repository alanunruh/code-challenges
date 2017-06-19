// ES6 supports classical inheritance as well, which is the same type of inheritance ruby supports.

"use strict";

class Animal {
  eat() {
    console.log("om nom nom");
  }
}

class Dog extends Animal {
  By using extends, the Dog class will inherit all methods from the Animal class
}

const d = new Dog();
d.eat(;)