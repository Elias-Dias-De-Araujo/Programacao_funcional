const gangorra = (a, b, c, d) => {
  if((a*b) == (c*d)) {
    return 0
  }else if((a*b) > (c*d)) {
    return -1
  }
  return 1
}
