///|
fn solution(s : String) -> Bool {
  let mut ret = true
  for i = 0; i < s.length() / 2; i = i + 1 {
    if s[i] != s[s.length() - i - 1] {
      ret = false
      break
    }
  }
  return ret
}

///|
test {
  inspect!(solution(""), content="true")
  inspect!(solution("a"), content="true")
  inspect!(solution("abc"), content="false")
  inspect!(solution("abcba"), content="true")
  inspect!(solution("abccba"), content="true")
}
