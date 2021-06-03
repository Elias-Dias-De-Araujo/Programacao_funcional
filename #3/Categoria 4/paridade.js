const paridade = (xs) => {
  if(xs.filter(x => x == true).length % 2 != 0) return true
  else return false 
}

console.log(paridade([]))
console.log(paridade([true,true,false]))
console.log(paridade([true,false,true,false,true]))
console.log(paridade([false,true,false]))