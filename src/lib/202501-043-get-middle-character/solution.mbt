///|
fn solution(word : String) -> String {
  let length = word.length()
  let mut start = 0
  let mut end = 0
  if length % 2 == 0 {
    start = length / 2 - 1
    end = start + 2
  } else {
    start = length / 2
    end = start + 1
  }
  let ret = word.substring(start~, end~)
  return ret
}

///|
test {
  // inspect!(solution("abcdefgh"), content="de")
  inspect!(solution("abcba"), content="c")
}
