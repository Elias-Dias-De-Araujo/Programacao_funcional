const maior = (e) => {
  if (e.length == 1) {
    return e[0]
  }

  if (e[0] > e[1]) {
    e.splice(1,1) 
  }
  
  else {
    e.splice(0,1) 
  }
  
  return maior(e);
}

console.log(maior([4]))
console.log(maior([5,1]))
console.log(maior([1,2,7,1,5]))