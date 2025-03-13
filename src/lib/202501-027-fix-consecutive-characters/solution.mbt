///|
fn solution(s : String, k : Int) -> Char? {
  let ret = None
  let map : Map[Char, Int] = {}
  let mut last : Char = ' '
  for c in s {
    let mut v = map.get_or_default(c, 0) + 1
    if c != last {
      v = 1
      last = c
    }
    if v >= k {
      return Some(c)
    }
    map.set(c, v)
  }
  return ret
}

///|
test {
  inspect!(solution("abcccaaab", 3), content="Some('c')")
  inspect!(solution("akkkc", 3), content="Some('k')")
  inspect!(solution("akkkb", 4), content="None")
}
