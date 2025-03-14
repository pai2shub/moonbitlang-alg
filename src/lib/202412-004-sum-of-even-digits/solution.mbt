///|
fn solution(numbers: Array[String]) -> Int {
    fn backtrack(groups: &Array<String>, index: Int, current_sum: Int, result: &mut Int) {
        if index == groups.len() {
            if current_sum % 2 == 0 {
                *result += 1;
            }
            return;
        }

        for digit in groups[index].chars() {
            let digit_value = digit.to_digit(10).unwrap() as Int;
            backtrack(groups, index + 1, current_sum + digit_value, result);
        }
    }

    let mut result = 0;
    backtrack(&numbers, 0, 0, &mut result);
    result
}


///|
test {
  inspect!(solution(["123", "456", "789"]), content="14")
  inspect!(solution(["123456789"]), content="4")
  inspect!(solution(["14329", "7568"]), content="10")
}
