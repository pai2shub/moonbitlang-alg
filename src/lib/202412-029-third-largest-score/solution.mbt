///|
fn solution(nums : Array[Int]) -> Int {
  let tmp : Set[Int] = Set::new()
  let nums = nums
    .iter()
    .filter(fn(num) {
      if tmp.contains(num) {
        return false
      } else {
        tmp.add(num)
        return true
      }
    })
    .collect()
  nums.sort_by(fn(a, b) { b - a })
  if nums.length() >= 3 {
    return nums[2]
  } else {
    return nums[0]
  }
}

///|
test {
  inspect!(solution([3, 2, 1]), content="1")
  inspect!(solution([1, 2]), content="2")
  inspect!(solution([2, 2, 3, 1]), content="1")
}
