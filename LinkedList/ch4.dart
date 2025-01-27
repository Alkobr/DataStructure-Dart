import 'Node.dart';

void removeAllOccurrences(LinkedList list, int value) {
  while (list.head != null && list.head?.value == value) {
    list.head = list.head?.next;
  }

  Node? current = list.head;
  while (current?.next != null) {
    if (current?.next?.value == value) {
      current?.next = current.next?.next;
    } else {
      current = current?.next;
    }
  }
}

void main() {
  var list = LinkedList<int>();
  list.append(1);
  list.append(2);
  list.append(2);
  list.append(3);

  removeAllOccurrences(list, 2);
  list.printList();
}
