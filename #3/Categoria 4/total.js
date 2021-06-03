const total = (e) => {
  const reducer = (accumulator, currentValue) => accumulator + currentValue
  const tot = e.map(e => e = 1)
  return tot.reduce(reducer, 0)
}

console.log(total([]))
console.log(total([1]))
console.log(total([2, 3]))
console.log(total([3, 2, 1]))