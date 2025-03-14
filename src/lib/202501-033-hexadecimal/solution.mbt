///|
fn solution(n : Int) -> String {
  let mut hex_str = ""
  let mut num = n.reinterpret_as_uint()
  let hex_chars = "0123456789ABCDEF"
  for i = 0; i < 8; i = i + 1 {
    let remainder = num % 16
    hex_str = hex_chars[remainder.reinterpret_as_int()].to_string() + hex_str
    num /= 16
  }
  hex_str
}

///|
test {
  inspect!(solution(0), content="00000000")
  inspect!(solution(1), content="00000001")
  inspect!(solution(@int.max_value), content="7FFFFFFF")
  inspect!(solution(@int.min_value), content="80000000")
}
