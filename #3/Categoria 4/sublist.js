const sublist = (i, f, xs) => {
  const size = xs.length
  const I = (i < 0 ? i + size : i)
  const F = (f < 0 ? f + size : f)

  const take = xs.slice();

  take.splice(F)
  take.splice(0, I)

  return take
}

console.log(sublist (1, 3, [0,1,2,3,4,5,6,7,8,9,10]))
console.log(sublist (0, 11, [0,1,2,3,4,5,6,7,8,9,10]))
console.log(sublist (2, 8, [0,1,2,3,4,5,6,7,8,9,10]))