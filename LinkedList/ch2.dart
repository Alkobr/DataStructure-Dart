
import '../linked_list.dart';

class FindMiddleNodeChallenge {
  /// Finds the middle node of a linked list
  /// 
  /// Time Complexity: O(n)

  static Node<E>? getMiddleNode<E>(LinkedList<E> list) {
    if (list.head == null) return null;
    
    var slow = list.head;
    var fast = list.head;
    
    while (fast?.next != null) {
      slow = slow!.next;
      fast = fast?.next?.next;
    }
    
    return slow;
  }

  // Demonstration method
  static void demonstrateFindMiddleNode() {
    // Odd number of elements
    final oddList = LinkedList<int>();
    oddList.append(1);
    oddList.append(2);
    oddList.append(3);
    oddList.append(4);
    oddList.append(5);

    print('Odd Length List:');
    oddList.printList();
    final oddMiddle = getMiddleNode(oddList);
    print('Middle Node: ${oddMiddle?.value}\n');

    // Even number of elements
    final evenList = LinkedList<int>();
    evenList.append(1);
    evenList.append(2);
    evenList.append(3);
    evenList.append(4);

    print('Even Length List:');
    evenList.printList();
    final evenMiddle = getMiddleNode(evenList);
    print('Middle Node: ${evenMiddle?.value}');
  }
}

void main() {
  FindMiddleNodeChallenge.demonstrateFindMiddleNode();
}
