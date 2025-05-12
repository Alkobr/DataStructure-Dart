import '../stack.dart';

class BalanceParenthesesChallenge {
  /// Checks if parentheses in a string are balanced
  /// 
  /// Time Complexity: O(n)
  static bool checkParenthesesBalance(String input) {
    final stack = Stack<String>();
    
    for (var char in input.split('')) {
      if (char == '(') {
        stack.push(char);
      } else if (char == ')') {
        // If closing parenthesis and stack is empty, unbalanced
        if (stack.isEmpty) return false;
        
        // Remove matching opening parenthesis
        stack.pop();
      }
    }
    
    // Stack should be empty for balanced parentheses
    return stack.isEmpty;
  }
void main() {
  print(isBalanced("(())")); // Output: true
  print(isBalanced("(()"));  // Output: false
}
