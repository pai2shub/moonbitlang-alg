///|
fn solution(words : String) -> String {
  let words = words.split(" ").collect()
  let map : Map[String, Int] = {}
  let rets : Array[String] = []
  for i = 0; i < words.length(); i = i + 1 {
    if map.contains(words[i]) == false {
      rets.push(words[i])
    }
    map[words[i]] = 1
  }
  return rets.join(" ")
}

///|
test {
  inspect!(solution("foo bar bar baz baz"), content="foo bar baz")
  inspect!(solution("my cat is my cat fat"), content="my cat is fat")
}
