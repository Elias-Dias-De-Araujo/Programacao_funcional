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

console.log(line(0))
console.log(line(1))
console.log(line(2))
console.log(line(3))
console.log(line(4))
console.log(line(5))
console.log(line(6))