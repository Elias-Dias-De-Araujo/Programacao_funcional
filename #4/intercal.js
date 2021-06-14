const intercal = (xs, ys) => {
  if(xs.length == 0){
    return ys
  }else if(ys.length == 0) {
    return xs
  }else {
    return [xs[0], ys[0]].concat(intercal(xs.slice(1), ys.slice(1)))   
  }
}

console.log(intercal ([1,2,3], [7,8,9]))
console.log(intercal ([1,2,3,4], [8,9]))
console.log(intercal ([5], [1,2,6]))