const rotEsq = (n, xs) => {
  if(n == 0) {
    return xs
  }else {
    xs.push(xs[0])
    xs.shift()
    return rotEsq(n-1, xs)
  }
}

console.log(rotEsq (0, ["a","s","d","f","g"]))
console.log(rotEsq (1, ["a","s","d","f","g"]))
console.log(rotEsq (3, ["a","s","d","f","g"]))
console.log(rotEsq (4, ["a","s","d","f","g"]))