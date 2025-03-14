///|
fn solution(scores : Array[Int]) -> Int {
  let mut liar_count = 0
  for i = 0; i < scores.length(); i = i + 1 {
    let mut less_or_equal = 0
    let mut greater = 0
    for j = 0; j < scores.length(); j = j + 1 {
      if scores[j] <= scores[i] {
        less_or_equal += 1
      }
      if scores[j] > scores[i] {
        greater += 1
      }
    }
    if less_or_equal > greater {
      liar_count += 1
    }
  }
  liar_count
}

///|
test {
  inspect!(solution([100, 100, 100]), content="3")
  inspect!(solution([2, 1, 3]), content="2")
  inspect!(solution([30, 1, 30, 30]), content="3")
  inspect!(solution([19, 27, 73, 55, 88]), content="3")
  inspect!(solution([19, 27, 73, 55, 88, 88, 2, 17, 22]), content="5")
}
