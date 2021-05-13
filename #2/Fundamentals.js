/* Identity */
const I = a => a
I(1)
//1
I(2)
//2
I(I)
//a => a

/* abstractions */
const add = a => b => a + b
add(1)
//b => a + b
add(1)(2)
//3

/* mockingbird - self-application */
const M = f => f(f)
M(I)
////a => a
try{
  M(M)
}catch(e) {
  console.log(e.message)
}
//Stack overflow

/* Kestrel - first, const */
const K = a => b => a // It takes two things and return the first one.
K(I)(M)
//a => a
K(K)(M)
//a => b => a
const K10 = K(10)
//b => a
K10(3)
//10

/* Kite - second */
K(I)(2)(10) 
//10
const KI = a => b => b
KI(4)(9)
//9 

/* Cardinal */
const C = f => a => b => f(b)(a)
C(K)(1)(2) // Cardinal of the kestrel is the Kite "KI(1)(2)"
//2

/* Church Encodings: Booleans */

/* NOT */
const T = K
// a => b => a
const F = KI
// a => b => b
T.inspect = () => 'T / K'
F.inspect = () => 'F / K'

const NOT = p => p(F)(T)

C(T)(1)(2)
//2
C(F)(1)(2)
//1
/* END */

/* AND */

const AND = p => q => p(q)(p)

//example:
// and(T)(F) -> F
// and(T)(T) -> T
// and(F)(T) -> F
// and(F)(F) -> F

/* END */

/* OR */
const OR = p => q => p(p)(q) // Same as the mockingbird

//example:
// and(T)(T) -> T
// and(T)(F) -> T
// and(F)(T) -> T
// and(F)(F) -> F


// and(T)(T) -> T
// and(T)(F) -> T
// and(F)(T) -> T
// and(F)(F) -> F

/* END */

/* Boolean equality */

const beq = p => q => p(q)(NOT(q))

//example:
// and(T)(T) -> T
// and(T)(F) -> F
// and(F)(T) -> F
// and(F)(F) -> T

/* END */

