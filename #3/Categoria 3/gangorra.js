const gangorra = (a, b, c, d) => {
  if((a*b) == (c*d)) {
    return 0
  }else if((a*b) > (c*d)) {
    return -1
  }
  return 1
}

console.log(gangorra(30, 100, 60, 50))
console.log(gangorra(40, 40, 38, 60))
console.log(gangorra(35, 80, 35, 75))
console.log(gangorra(45, 23, 96, 12))
console.log(gangorra(74, 12, 65, 48))
console.log(gangorra(78, 45, 12, 23))