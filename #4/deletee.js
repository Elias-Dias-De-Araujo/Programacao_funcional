const deletee = (x, xs) => {
  const arrIndex = xs.indexOf(x); 
  xs.splice(arrIndex,arrIndex)
  return xs
}

console.log(deletee (5, []))
console.log(deletee (1, [1]))
console.log(deletee (4, [1,3,4]))
console.log(deletee (3, [4,3,1,3]))
console.log(deletee (5, [1,5,6,9]))