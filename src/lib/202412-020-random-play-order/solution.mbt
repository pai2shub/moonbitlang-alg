///|
fn solution(musics : Array[Int]) -> Array[Int] {
  let ret : Array[Int] = [musics[0]]
  let mut musics = musics[1:musics.length()].iter().collect()
  while musics.length() > 0 {
    if musics.length() > 1 {
      let tmp = musics[0]
      musics = musics[1:musics.length()].iter().collect()
      musics.push(tmp)
    }
    ret.push(musics[0])
    musics = musics[1:musics.length()].iter().collect()
  }
  return ret
}

///|
test {
  inspect!(solution([5, 3, 2, 1, 4]), content="[5, 2, 4, 1, 3]")
  inspect!(solution([4, 1, 3, 2]), content="[4, 3, 1, 2]")
  inspect!(solution([1, 2, 3, 4, 5, 6]), content="[1, 3, 5, 2, 6, 4]")
}
