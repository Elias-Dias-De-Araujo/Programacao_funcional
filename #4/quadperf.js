const quadperf = (n) => {
  const xs = Array.from(Array(n), (_, i) => i +1)
  const verify = xs.filter(x => x*x == n)
  return (verify.length > 0 ? true : false)
}

console.log(quadperf(12))
console.log(quadperf(16))
console.log(quadperf(25))
console.log(quadperf(5))