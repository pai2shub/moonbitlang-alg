///|
fn solution(arr : Array[Int]) -> Int {
  let mut ret = arr[0] * arr[1]
  for i = 2; i < arr.length(); i = i + 1 {
    let tmp = arr[i] * arr[i - 1]
    if tmp > ret {
      ret = tmp
    }
  }
  return ret
}

///|
test {
  inspect!(solution([1, 2, 3]), content="6")
  inspect!(solution([9, 5, 10, 2, 24, -1, -48]), content="50")
  inspect!(solution([-23, 4, -5, 99, -27, 329, -2, 7, -921]), content="-14")
}
