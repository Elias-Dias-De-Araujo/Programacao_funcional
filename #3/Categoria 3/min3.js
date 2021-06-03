const min3 = (a, b, c) => (Math.min(c, Math.min(a,b)))

console.log(min3(1, 2, 3))
console.log(min3(2, 1, 3))
console.log(min3(3, 4, 2))
console.log(min3(2, 5, 4))