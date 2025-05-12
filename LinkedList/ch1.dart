
import '../linked_list.dart';

class PrintReverseChallenge {
  /// Prints a linked list in reverse order using recursion
  /// 
  /// Time Complexity: O(n)
  static void printReverse<E>(LinkedList<E> list) {
    _printReverseRecursive(list.head);
  }

  static void _printReverseRecursive<E>(Node<E>? node) {
    if (node == null) return;
    
    _printReverseRecursive(node.next);
    print(node.value);
  }

  // Demonstration method
  static void demonstratePrintReverse() {
    final list = LinkedList<int>();
    list.append(1);
    list.append(2);
    list.append(3);
    list.append(4);
    list.append(5);

    print('Original List Order:');
    list.printList();
    
    print('\nReverse Order:');
    printReverse(list);
  }
}

void main() {
  PrintReverseChallenge.demonstratePrintReverse();
}
