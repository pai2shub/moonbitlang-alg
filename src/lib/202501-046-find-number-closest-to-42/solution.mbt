///|
fn solution(num : Array[Int]) -> Int {
  let mut ret = num[0]
  let mut diff = (ret - 42).abs()
  for i = 1; i < num.length(); i = i + 1 {
    let tmp = (num[i] - 42).abs()
    if tmp < diff {
      ret = num[i]
      diff = tmp
    }
  }
  return ret
}

///|
test {
  inspect!(solution([42]), content="42")
  inspect!(solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]), content="10")
  inspect!(solution([41, 43]), content="41")
}
