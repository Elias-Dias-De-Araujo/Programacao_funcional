const swap = (xs, ini, end) => {
  if((xs.length -1) < end) return xs
  const aux = xs[ini]
  xs[ini] = xs[end]
  xs[end] = aux

  return xs 
}

console.log(swap([], 0, 5))
console.log(swap([1], 0, 3))
console.log(swap([1,3,4], 1, 2))
console.log(swap([1,2,3,4,5,6], 2, 5))
console.log(swap([5,6,7,8,9], 0, 3))