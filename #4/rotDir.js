const rotDir = (n, xs) => {
  if(n == 0) {
    return xs
  }else {
    xs.unshift(xs[xs.length - 1])
    xs.pop()
    return rotDir(n-1, xs)
  }
}

console.log(rotDir (0, ["a","s","d","f","g"]))
console.log(rotDir (1, ["a","s","d","f","g"]))
console.log(rotDir (2, ["a","s","d","f","g"]))
console.log(rotDir (3, ["a","s","d","f","g"]))
console.log(rotDir (4, ["a","s","d","f","g"]))
console.log(rotDir (5, ["a","s","d","f","g"]))