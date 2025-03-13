///|
fn solution(pin : String) -> Bool {
  if length(pin) == false {
    return false
  }
  for c in pin {
    if c < '0' || c > '9' {
      return false
    }
  }
  return true
}

///|
fn length(pin : String) -> Bool {
  if pin.length() == 4 {
    return true
  }
  if pin.length() == 6 {
    return true
  }
  return false
}

///|
test {
  inspect!(solution("363734"), content="true")
  inspect!(solution("0000"), content="true")
  inspect!(solution("1111"), content="true")
}
