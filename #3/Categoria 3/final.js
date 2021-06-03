const final = (e, xs) => {
  const fi = xs.slice(xs.length - e)
  return fi
}

console.log(final (0, []))
console.log(final (3, [2,5,4,7,9,6]))
console.log(final (2, [2,5,4,7,9,6]))
console.log(final (1, [2,5,4,7,9,6]))

