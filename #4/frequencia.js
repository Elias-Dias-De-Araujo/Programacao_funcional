const frequencia = (x, xs) => {
  const len = xs.filter(a => a == x)
  return len.length
}

console.log(frequencia (1, []))
console.log(frequencia (4, [4]))
console.log(frequencia (4, [5]))
console.log(frequencia (4, [4,4]))
console.log(frequencia (2, [4,4]))
console.log(frequencia (5, [4,5,2,1,5,5,9]))