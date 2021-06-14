const reverso = (xs) => {
  if(xs.length == 0){
    return xs
  }else {
    return reverso(xs.slice(1)).concat(xs[0])
  }
}

console.log(reverso([]))
console.log(reverso([7]))
console.log(reverso([2,3]))
console.log(reverso([1,2,3,4]))