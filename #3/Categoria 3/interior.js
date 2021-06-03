const interior = (e) => {
  const inte = e.slice(1, e.length - 1)
  return inte
}

console.log(interior([1,2]))
console.log(interior([1,3,2]))
console.log(interior([2,5,3,7,3]))
console.log(interior([2,2,2,4]))
console.log(interior([1,2,3,5,7,8]))