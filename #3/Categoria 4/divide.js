const divide = (xs, a) => {
  const A = xs.slice();
  const B = xs.slice();

  A.splice(a)
  B.splice(0, a)

  return {A, B}
}

console.log(divide([1,2,3,4], 0))
console.log(divide([1,2,3,4], 1))
console.log(divide([1,2,3,4], 4))