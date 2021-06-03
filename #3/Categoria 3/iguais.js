const iguais = (a, b, c) => {
  if((a==b) && (b==c)){
    return 3
  } 
  if((((a==b) && (b/=c)) || ((b==c) && (a/=c)) || ((a==c) && (b/=c)))){
    return 2
  }
  return 0
}

console.log(iguais (2, 2, 2))
console.log(iguais (2, 2, 3))
console.log(iguais (2, 3, 2))
console.log(iguais (2, 1, 1))
console.log(iguais (3, 2, 2))