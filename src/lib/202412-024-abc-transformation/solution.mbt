///|
fn solution(s : String, k : Int) -> String {
  let mut ret = ""
  let mut tmp = s
  for i = 0; i < k; i = i + 1 {
    ret = ""
    for c in tmp {
      if c == 'a' {
        ret = ret + "bc"
      } else if c == 'b' {
        ret = ret + "ca"
      } else if c == 'c' {
        ret = ret + "ab"
      }
    }
    tmp = ret
  }
  return ret
}

///|
test {
  inspect!(solution("abc", 2), content="caababbcbcca")
  inspect!(solution("abca", 3), content="abbcbccabccacaabcaababbcabbcbcca")
  inspect!(solution("cba", 1), content="abcabc")
}
