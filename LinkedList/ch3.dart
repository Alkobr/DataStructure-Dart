import 'Node.dart';

void reverseLinkedList(LinkedList list) {
  Node? prev = null;
  Node? current = list.head;
  Node? next;

  while (current != null) {
    next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }
  list.head = prev;
}

void main() {
  var list = LinkedList<int>();
  list.append(1);
  list.append(2);
  list.append(3);

  reverseLinkedList(list);
  list.printList(); 
}
