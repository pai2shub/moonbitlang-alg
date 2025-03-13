///|
fn solution(guess : (Int) -> Int) -> Int {
  // You need to guees a number between 1 and 100 by interactive way.
  // You will get a function guess(x : UInt) -> Int that returns -1 if the number is less than the number you are guessing, and 1 if the number is greater than the number you are guessing.
  // But when you get a right number, the function returns a validation code for your solution, return it then you will pass this problem.
  // When you guess too many times, the test will be failed.

  let mut low = 1
  let mut high = 100
  while low <= high {
    let mid = (low + high) / 2
    let result = guess(mid)
    if result == 0 {
      // 猜中，返回验证码
      return mid
    } else if result == -1 {
      // 目标数字小于当前猜测值
      high = mid - 1
    } else if result == 1 {
      // 目标数字大于当前猜测值
      low = mid + 1
    }
  }

  // 如果未猜中，返回默认值（理论上不会到达此处）
  return -1
}

///|
test {
  //there is no wbtest for interactive problem
}
