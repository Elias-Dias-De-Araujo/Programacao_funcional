const corpo = (e) => {
  if(e.length == 1) {
    return []
  }else {
    e.splice(e.length - 1, 1)
    return e
  }
}


console.log(corpo([1]))
console.log(corpo([1, 2]))
console.log(corpo([1, 2, 3, 4]))