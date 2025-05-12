// lib/linked_list/linked_list.dart
class Node<T> {
  T value;
  Node<T>? next;
  
  Node(this.value, [this.next]);
}

class LinkedList<E> {
  Node<E>? head;
  
  // Add element to the end of the list
  void append(E value) {
    final newNode = Node(value);
    
    if (head == null) {
      head = newNode;
      return;
    }
    
    var current = head;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = newNode;
  }
  
  // Utility method to print the list
  void printList() {
    var current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}
