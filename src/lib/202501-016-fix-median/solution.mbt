// The median function calculates the median of an array of integers, but there is an error in its implementation. Please fix it and use it in the solution function to calculate the result of the median of an array of integers divided by the length of the array.
///|
fn solution(arr : Array[Int]) -> Int {
  arr.sort()
  let mid = arr[arr.length() / 2]
  if arr.length() % 2 == 0 {
    return (mid + arr[arr.length() / 2 - 1]) / 2 / arr.length()
  }
  return mid / arr.length()
}

///|
test {
  inspect!(solution([34, 58, 22, 245, 9]), content="6")
  inspect!(solution([35365, 8466, 354545, 722, 6]), content="1693")
  inspect!(solution([35, 47, 96, 37, 456]), content="9")
}
