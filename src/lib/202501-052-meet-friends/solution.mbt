///|
fn solution(friends : String) -> Array[(String, String)] {
  let ret = friends
    .split(";")
    .iter()
    .map(fn(friend) -> (String, String) {
      let tmp = friend
        .split(":")
        .iter()
        .map(fn(part) -> String { part.to_upper() })
        .collect()
      return (tmp[0], tmp[1])
    })
    .collect()
  ret.sort_by(fn(a, b) {
    if a.1 == b.1 {
      a.0.compare(b.0)
    } else {
      return a.1.compare(b.1)
    }
  })
  return ret
}

///|
test {
  inspect!(
    solution(
      "John:Gates;Michael:Wahl;Megan:Bell;Paul:Dorries;James:Dorny;Lewis:Steve;Alex:Meta;Elizabeth:Russel;Anna:Korn;Ann:Kern;Amber:Cornwell",
    ),
    content=
      #|[("MEGAN", "BELL"), ("ANN", "KERN"), ("ANNA", "KORN"), ("ALEX", "META"), ("MICHAEL", "WAHL"), ("JAMES", "DORNY"), ("JOHN", "GATES"), ("LEWIS", "STEVE"), ("ELIZABETH", "RUSSEL"), ("PAUL", "DORRIES"), ("AMBER", "CORNWELL")]
    ,
  )
}
