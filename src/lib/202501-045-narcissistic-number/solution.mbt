///|
fn solution(n : BigInt) -> Bool {
  // Narcissistic number  
  let mut sum : BigInt = 0
  let str = n.to_string()
  let exp = BigInt::from_int(str.length())
  for i = 0; i < str.length(); i = i + 1 {
    let c = str[i]
    let t = c.to_int() - 48
    let tb : BigInt = BigInt::from_int(t)
    sum = sum + tb.pow(exp)
  }
  return sum == n
}

///|
test {
  inspect!(solution(1), content="true")
  inspect!(solution(2), content="true")
  inspect!(solution(153), content="true")
}
