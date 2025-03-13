///|
fn solution(s : String) -> Bool {
  if s.length() == 0 {
    return true
  }
  if s.length() % 2 != 0 {
    return false
  }
  let stack : Array[Char] = []
  for c in s {
    match c {
      '(' => stack.push(')')
      '{' => stack.push('}')
      '[' => stack.push(']')
      ')' | '}' | ']' =>
        if stack.is_empty() || stack.unsafe_pop() != c {
          return false
        }
      _ => println("")
    }
  }
  return stack.is_empty()
}

///|
test {
  inspect!(solution("()"), content="true")
  inspect!(solution("()[]{}"), content="true")
  inspect!(solution("(]"), content="false")
  inspect!(solution("([])"), content="true")
}
