const countNeg = (e) => {
  const count = e.filter(e => e < 0)
  return count.length
}

console.log(countNeg ([]))
console.log(countNeg ([1,2,3,4,5]))
console.log(countNeg ([1,-1,2,-3,4]))
console.log(countNeg ([2,-2]))
console.log(countNeg ([1,-1]))
console.log(countNeg ([1,-3,-4,3,4,-5]))
