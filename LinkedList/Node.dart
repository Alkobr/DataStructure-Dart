class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value);
}

class LinkedList<T> {
  Node<T>? head;

  void append(T value) {
    if (head == null) {
      head = Node(value);
      return;
    }
    var current = head;
    while (current?.next != null) {
      current = current?.next;
    }
    current?.next = Node(value);
  }

  void printList() {
    var current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}
