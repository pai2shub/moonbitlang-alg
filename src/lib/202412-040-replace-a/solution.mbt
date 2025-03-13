///|
fn solution(s : String) -> String {
  let mut ret = ""
  for c in s {
    if c == 'a' {
      ret += "%100"
    } else {
      ret += c.to_string()
    }
  }
  return ret
}

///|
test {
  inspect!(solution("abcdwa"), content="%100bcdw%100")
  inspect!(solution("banana"), content="b%100n%100n%100")
  inspect!(solution("apple"), content="%100pple")
}
