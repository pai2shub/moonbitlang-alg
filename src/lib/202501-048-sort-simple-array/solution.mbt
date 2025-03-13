///|
/// // Sort an array contains only 0, 1, and 2. However, the order should be 1 first, 0 second, and 2 last.
fn solution(s : Array[Int]) -> Array[Int] {
  let mut x = 0
  let mut y = 0
  let mut z = 0
  for i = 0; i < s.length(); i = i + 1 {
    if s[i] == 1 {
      x += 1
    } else if s[i] == 0 {
      y += 1
    } else {
      z += 1
    }
  }
  for i = 0; i < x; i = i + 1 {
    s[i] = 1
  }
  for i = x; i < x + y; i = i + 1 {
    s[i] = 0
  }
  for i = x + y; i < x + y + z; i = i + 1 {
    s[i] = 2
  }
  return s
}

///|
test {
  inspect!(
    solution([0, 1, 2, 0, 1, 2, 0, 1, 2]),
    content="[1, 1, 1, 0, 0, 0, 2, 2, 2]",
  )
  inspect!(solution([0]), content="[0]")
  inspect!(solution([]), content="[]")
}
