///|
fn solution(s : String) -> String {
  let mut lower_size = 0
  let mut upper_size = 0
  for i = 0; i < s.length(); i = i + 1 {
    if s[i].is_ascii_lowercase() {
      lower_size = lower_size + 1
    } else {
      upper_size = upper_size + 1
    }
  }
  if lower_size >= upper_size {
    return s.to_lower()
  } else {
    return s.to_upper()
  }
}

///|
test {
  inspect!(solution("CODe"), content="CODE")
  inspect!(solution("COde"), content="code")
  inspect!(solution("Code"), content="code")
}
