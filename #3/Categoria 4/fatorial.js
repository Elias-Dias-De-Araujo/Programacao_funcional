const fatorial = (e) => (e < 2 ? 1 : e * fatorial(e - 1))


console.log(fatorial(0))
console.log(fatorial(1))
console.log(fatorial(5))