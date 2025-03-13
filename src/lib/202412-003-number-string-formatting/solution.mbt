///|
// Carol encountered a problem at work where he needs to convert a user-input number string without thousand separators into a format with thousand separators, while preserving the decimal part. Carol also noticed that sometimes the input number string has unnecessary leading 0s, which also need to be trimmed. Please help Carol write a program to accomplish this task.
fn solution(s : String) -> String {
  let s = trim_leading_zeros(s)
  let splits = s.split(".").collect()
  let right = splits[0]
  let right = add_commas(right)
  println(right)
  if splits.length() > 1 {
    return right + "." + splits[1]
  }
  return right
}

///|
fn trim_leading_zeros(s : String) -> String {
  for i = 0; i < s.length(); i = i + 1 {
    if s[i] != '0' {
      return s[i:s.length()].to_string()
    }
  }
  s
}

///|
fn add_commas(s : String) -> String {
  let mut result = ""
  let mut i = s.length() - 1
  let mut cycle = 0
  while i >= 0 {
    result = s[i].to_string() + result
    i = i - 1
    cycle = cycle + 1
    if cycle == 3 && i >= 0 {
      result = "," + result
      cycle = 0
    }
  }
  result
}

///|
test {
  inspect!(solution("0000123456789.99"), content="123,456,789.99")
  inspect!(solution("1294512.12412"), content="1,294,512.12412")
  inspect!(solution("987654321"), content="987,654,321")
}
