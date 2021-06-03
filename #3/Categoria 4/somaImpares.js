const somaImpares = (e) => {
  const reducer = (accumulator, currentValue) => accumulator + currentValue
  const impares = e.filter(e => e % 2 != 0)
  return impares.reduce(reducer) 
}

console.log(somaImpares ([2,3,1,5]))
console.log(somaImpares ([1,1,4,2]))
console.log(somaImpares ([3,2,4,6,5,7,8,0,1]))
console.log(somaImpares ([2,3,1,5,2,2]))
console.log(somaImpares ([1,1,1,1]))