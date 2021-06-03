const euler1 = (e) => {
  var number = 0
  for(var i = 0; i < e; i++) {
    if(i % 3 == 0 || i % 5 == 0) number += i
  }
  return number
}

console.log(euler1(6))
console.log(euler1(10))