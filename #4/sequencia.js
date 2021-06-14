const sequencia = (n, m) => {
  const NM = (n + m) - m
  return Array.from({length: NM}, (_, i) => i = m++)
}

console.log(sequencia (0, 2))
console.log(sequencia (1, 2))
console.log(sequencia (3, 5))
console.log(sequencia (4, 4))