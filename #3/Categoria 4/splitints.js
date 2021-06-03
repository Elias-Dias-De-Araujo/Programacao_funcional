const splitints = (xs) => {
  const A = (xs.filter(x => x % 2 != 0))
  const B = (xs.filter(x => x % 2 == 0))

  return {A, B}
}

console.log(splitints([1,2,3,4,5,6,7]))
console.log(splitints([2,4,6,1,1,7]))