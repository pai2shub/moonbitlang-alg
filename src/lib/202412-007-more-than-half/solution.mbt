///|
fn solution(numbers : Array[Int]) -> Int {
  let mut candidate = 0
  let mut count = 0
  for num in numbers {
    if count == 0 {
      candidate = num
    }
    if num == candidate {
      count += 1
    } else {
      count -= 1
    }
  }
  let mut occurrence = 0
  for num in numbers {
    if num == candidate {
      occurrence = occurrence + 1
    }
  }
  return candidate
}

///|
test {
  inspect!(solution([1, 3, 8, 2, 3, 1, 3, 3, 3]), content="3")
  inspect!(solution([5, 5, 5, 1, 2, 5, 5]), content="5")
  inspect!(solution([9, 9, 9, 9, 8, 9, 8, 8]), content="9")
}
