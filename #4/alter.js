const alter = (n) => {
  var aux = -1
  const xs = Array.from({length: n*2}, (_, i) => i + 1)
  const ys = Array.from({length: n*2}, (_, i) => i = aux--)
  
  return intercal(xs, ys)
}

const intercal = (xs, ys) => {
  if(xs.length == 0){
    return ys
  }else if(ys.length == 0) {
    return xs
  }else {
    return [xs[0], ys[0]].concat(intercal(xs.slice(1), ys.slice(1)))   
  }
}

console.log(alter(2))