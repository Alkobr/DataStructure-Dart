bool isBalanced(String input) {
  List<String> stack = [];
  for (var char in input.split('')) {
    if (char == '(') {
      stack.add(char);
    } else if (char == ')') {
      if (stack.isEmpty) return false;
      stack.removeLast();
    }
  }
  return stack.isEmpty;
}

void main() {
  print(isBalanced("(())")); // Output: true
  print(isBalanced("(()"));  // Output: false
}
