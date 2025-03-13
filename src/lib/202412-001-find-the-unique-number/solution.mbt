///|
fn solution(cards : Array[Int]) -> Int {
  // 找到唯一的数字
  let mut result : Int = 0
  for i = 0; i < cards.length(); i = i + 1 {
    result = result ^ cards[i]
  }
  result
}

///|
test {
  inspect!(solution([1, 1, 2, 2, 3, 3, 4, 5, 5]), content="4")
  inspect!(solution([0, 1, 0, 1, 2]), content="2")
  inspect!(solution([7, 3, 3, 7, 10]), content="10")
}
