// lib/linked_list/challenges/remove_occurrences.dart
import '../linked_list.dart';

class RemoveOccurrencesChallenge {
  /// Removes all occurrences of a specific value from the linked list
  /// 
  /// Time Complexity: O(n)
  static void removeAllOccurrences<E>(LinkedList<E> list, E value) {
    // Handle removing from the head
    while (list.head != null && list.head!.value == value) {
      list.head = list.head!.next;
    }
    
    // If list is now empty
    if (list.head == null) return;
    
    var current = list.head;
    while (current?.next != null) {
      if (current!.next!.value == value) {
        current.next = current.next!.next;
      } else {
        current = current.next;
      }
    }
  }

  // Demonstration method
  static void demonstrateRemoveOccurrences() {
    // Test case 1: Remove from middle
    final list1 = LinkedList<int>();
    list1.append(1);
    list1.append(2);
    list1.append(3);
    list1.append(2);
    list1.append(4);
    list1.append(2);

    print('Original List 1:');
    list1.printList();

    removeAllOccurrences(list1, 2);

    print('\nList after removing all 2s:');
    list1.printList();

    // Test case 2: Remove from beginning and end
    final list2 = LinkedList<int>();
    list2.append(2);
    list2.append(3);
    list2.append(4);
    list2.append(2);

    print('\nOriginal List 2:');
    list2.printList();

    removeAllOccurrences(list2, 2);

    print('\nList after removing all 2s:');
    list2.printList();
  }
}

void main() {
  RemoveOccurrencesChallenge.demonstrateRemoveOccurrences();
}
