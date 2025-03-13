///|
fn solution(n : Int) -> Int {
  if n == 0 {
    return 0
  }
  let x = n % 16
  let y = n / 16
  if x > 0 {
    return 16 * (y + 1)
  }
  return 16 * y
}

///|
test {
  inspect!(solution(0), content="0")
  inspect!(solution(1), content="16")
  inspect!(solution(15), content="16")
  inspect!(solution(16), content="16")
  inspect!(solution(21), content="32")
}
