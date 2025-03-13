///|
fn solution(words : Array[String]) -> String {
  let mut ret = ""
  let mut max = 0
  for word in words {
    let mut tmp = 0
    for i = 0; i < word.length(); i = i + 1 {
      tmp = tmp + word[i].to_int() - 'a'.to_int() + 1
    }
    if tmp > max {
      max = tmp
      ret = word
    }
  }
  return ret
}

///|
test {
  inspect!(solution(["aaa", "b"]), content="aaa")
  inspect!(solution(["abc", "acb", "bcb"]), content="bcb")
}
