///|
enum BinaryTree {
  Empty
  Node(BinaryTree, BinaryTree)
} derive(Show)

///|
fn solution(height : Int) -> BinaryTree {
  return build_tree(height)
}

///|
fn build_tree(height : Int) -> BinaryTree {
  if height == 0 {
    return Empty
  } else {
    return Node(build_tree(height - 1), build_tree(height - 1))
  }
}

///|
test {
  inspect!(solution(0), content="Empty")
  inspect!(solution(1), content="Node(Empty, Empty)")
  inspect!(solution(2), content="Node(Node(Empty, Empty), Node(Empty, Empty))")
}
