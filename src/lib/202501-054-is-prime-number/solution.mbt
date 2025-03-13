///|
fn solution(n : UInt) -> Bool {
  if n < 2 {
    return false
  }
  if n == 2 {
    return true
  }
  if n % 2 == 0 {
    return false
  }
  let limit = n / 2
  for i = 3U; i < limit; i = i + 2 {
    if n % i == 0 {
      return false
    }
  }
  return true
}

///|
test {
  assert_true!(solution(2))
  assert_true!(solution(3))
  assert_false!(solution(4))
}
