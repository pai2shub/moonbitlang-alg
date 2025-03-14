///|
fn solution(arr : Array[Int]) -> Int {
  // 计算前三个元素中奇数的数量
  let mut odd_count = 0
  for i = 0; i < 3; i = i + 1 {
    if arr[i] % 2 != 0 {
      odd_count += 1
    }
  }

  // 判断数组的主要类型是奇数还是偶数
  let is_majority_odd = odd_count > 1

  // 根据主要类型查找 outlier
  for num in arr {
    if (is_majority_odd && num % 2 == 0) ||
      (is_majority_odd == false && num % 2 != 0) {
      return num
    }
  }

  // 如果没有找到，返回默认值（根据题意这种情况不会发生）
  return -1
}

///|
test {
  inspect!(solution([2, 6, 8, -10, 3]), content="3")
  inspect!(
    solution([206847684, 1056521, 7, 17, 1901, 21104421, 7, 1, 35521, 1, 7781]),
    content="206847684",
  )
  inspect!(solution([@int.max_value, 0, 1]), content="0")
}
