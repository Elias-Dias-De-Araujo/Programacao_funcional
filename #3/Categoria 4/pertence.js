const pertence = (a, b) => {
  const exist = b.filter(b => b == a)
  return (exist.length > 0 ? true : false)
}

console.log(pertence(1, []))
console.log(pertence(1, [3]))
console.log(pertence(2, [3, 7, 4, 2]))