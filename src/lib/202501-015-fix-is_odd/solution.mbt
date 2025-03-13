///|
enum NumKind {
  Odd
  NotOdd
} derive(Show)

///|
fn is_odd(n : Int) -> Bool {
  n % 2 == 1
}

///|
fn solution(n : Int) -> NumKind {
  if is_odd(n) {
    Odd
  } else {
    NotOdd
  }
}

///|
test {
  inspect!(solution(0), content="NotOdd")
  inspect!(solution(1), content="Odd")
  inspect!(solution(22), content="NotOdd")
  inspect!(solution(17), content="Odd")
}
