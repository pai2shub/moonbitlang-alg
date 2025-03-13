///|
fn solution(n : Int) -> Int {
  let strs = n.to_string().iter().collect()
  strs.sort()
  let mut ret = 0
  for i = strs.length() - 1; i >= 0; i = i - 1 {
    ret = ret * 10 + strs[i].to_int() - 48
  }
  return ret
}

///|
test {
  inspect!(solution(12345), content="54321")
  inspect!(solution(42145), content="54421")
  inspect!(solution(145263), content="654321")
}
