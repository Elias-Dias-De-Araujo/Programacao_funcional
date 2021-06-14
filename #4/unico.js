const unico = (x, xs) => {
  if (xs.filter(a => a == x).length == 1){
    return true
  }else {
    return false
  }
} 

console.log(unico (2, [2]))
console.log(unico (2, [3, 1]))
console.log(unico (2, [1, 2, 3, 2]))