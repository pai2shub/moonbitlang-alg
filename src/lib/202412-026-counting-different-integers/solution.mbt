///|
fn solution(word : String) -> Int {
  let mut tmp = ""
  for c in word {
    if c.is_digit(10) {
      tmp = tmp + c.to_string()
    } else {
      tmp = tmp + " "
    }
  }
  let map : Map[String, Int] = {}
  let splits = tmp
    .split(" ")
    .filter(fn(s : String) -> Bool {
      if s.length() == 0 {
        return false
      }
      let mut tmp = ""
      for i = 0; i < s.length(); i = i + 1 {
        if s[i] == '0' {
          continue
        }
        tmp = s[i:s.length()].to_string()
      }
      if tmp.length() == 0 {
        tmp = "0"
      }
      if map.contains(tmp) {
        return false
      }
      map.set(tmp, 1)
      return true
    })
    .collect()
  return splits.length()
}

///|
test {
  inspect!(solution("a123bc34d8ef34"), content="3")
  inspect!(solution("t1234c23456"), content="2")
  inspect!(solution("a1b01c001d4"), content="2")
}
