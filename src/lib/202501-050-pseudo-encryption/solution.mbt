///|
fn solution(s : String, n : Int) -> String {
  let mut ret = s
  for i = 0; i < n; i = i + 1 {
    let odd = map(ret, 0)
    let even = map(ret, 1)
    ret = even + odd
  }
  return ret
}

///|
fn map(s : String, n : Int) -> String {
  let mut ret = ""
  for i = 0; i < s.length(); i = i + 1 {
    if i % 2 == n {
      ret = ret + s[i].to_string()
    }
  }
  return ret
}

///|
test {
  inspect!(solution("012345", 1), content="135024")
  inspect!(solution("012345", 2), content="304152")
  inspect!(solution("012345", 3), content="012345")
}
