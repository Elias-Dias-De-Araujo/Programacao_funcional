const iguais = (a, b, c) => {
  if((a==b) && (b==c)){
    return 3
  } 
  if((((a==b) && (b/=c)) || ((b==c) && (a/=c)) || ((a==c) && (b/=c)))){
    return 2
  }
  return 0
}