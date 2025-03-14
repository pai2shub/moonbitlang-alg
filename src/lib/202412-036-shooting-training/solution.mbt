///|
fn solution(x : Int, y : Int) -> Int {
  let distance = (x * x + y * y).to_float().sqrt()
  if distance <= 1 {
    10
  } else if distance <= 2 {
    9
  } else if distance <= 3 {
    8
  } else if distance <= 4 {
    7
  } else if distance <= 5 {
    6
  } else if distance <= 6 {
    5
  } else if distance <= 7 {
    4
  } else if distance <= 8 {
    3
  } else if distance <= 9 {
    2
  } else if distance <= 10 {
    1
  } else {
    0
  }
}

///|
test {
  inspect!(solution(1, 0), content="10")
  inspect!(solution(1, 1), content="9")
  inspect!(solution(0, 5), content="6")
  inspect!(solution(3, 4), content="6")
}
