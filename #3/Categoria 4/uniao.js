const uniao = (a, b) =>{
  const concate = a.concat(b)
  const noRepeat = concate.filter((e, i) => {
    return concate.indexOf(e) === i
  })

  return noRepeat
} 

console.log(uniao([4, 5], [1]))
console.log(uniao([4, 5], [4, 2, 5]))
console.log(uniao([1, 2, 3], [1, 2, 3, 4, 6]))