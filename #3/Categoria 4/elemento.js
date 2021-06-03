const elemento = (a,b) => {
  if (a >= 0) {
    return b[a]
  }else {
    const x = a + b.length
    return b[x]
  } 
}

console.log(elemento(2, [2,7,3,9]))
console.log(elemento(0, [2,7,3,9]))