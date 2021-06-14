const triangle = (x) => {
  var count = Array.from({length: x}, (_, i) => i+1)
  const result = count.map(x => line(x))
  return result
}

const line = (x) => {
  if(x == 0) {
    return []
  }else {
    var start = Array.from({length: x-1}, (_, i) => i+1).reduce((a, b) => a + b, 0) + 1
    const arr = Array.from({length: x-1}, (_, i) => i=start++)
    arr.push(start)
    return arr
  }
}

console.log(triangle(0))
console.log(triangle(1))
console.log(triangle(2))
console.log(triangle(3))
console.log(triangle(4))
console.log(triangle(5))