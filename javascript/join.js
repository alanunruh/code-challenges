// https://lodash.com/docs/4.17.4#join

"use strict";

var _ =  {


  join: (array, separator = ',') => {
    return array.join(separator);
  }
}

const value = _.join(["Hello", "Goodbye"], ", ")

console.log(value)