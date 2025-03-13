///|
fn solution(text : String, shift : Int) -> String {
  let mut ret = ""
  let shift = shift % 26
  let a = 'A'.to_int()
  for c in text {
    let c1 = c.to_int() - a
    let c2 = c1 + shift
    let c3 = c2 % 26
    let c4 = c3 + a
    ret = ret + Char::from_int(c4).to_string()
  }
  return ret
}

///|
test {
  inspect!(solution("Z", 1), content="A")
  inspect!(solution("Z", 2), content="B")
  inspect!(solution("ABC", 0), content="ABC")
  inspect!(solution("ABC", 26), content="ABC")
  inspect!(solution("ABC", 27), content="BCD")
}
