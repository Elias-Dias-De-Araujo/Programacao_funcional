const intersec = (a, b) => a.filter(e => b.includes(e))

console.log(intersec([3], [3]))
console.log(intersec([3,4,1], [1,4,3]))
console.log(intersec([3,6,5,7], [9,7,5,1,3,6]))
console.log(intersec([3,6,5,7], [9,7,5,1,3]))