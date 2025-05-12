
import '../linked_list.dart';

class ReverseListChallenge {
  /// Reverses a linked list in-place
  /// 
  /// Time Complexity: O(n)
  static void reverseList<E>(LinkedList<E> list) {
    Node<E>? prev = null;
    var current = list.head;
    
    while (current != null) {
      final nextTemp = current.next;
      current.next = prev;
      prev = current;
      current = nextTemp;
    }
    
    list.head = prev;
  }

  // Demonstration method
  static void demonstrateReverseList() {
    final list = LinkedList<int>();
    list.append(1);
    list.append(2);
    list.append(3);
    list.append(4);
    list.append(5);

    print('Original List:');
    list.printList();

    reverseList(list);

    print('\nReversed List:');
    list.printList();
  }
}

void main() {
  ReverseListChallenge.demonstrateReverseList();
}
