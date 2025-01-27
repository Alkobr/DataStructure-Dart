import 'Node.dart';

Node? findMiddleNode(LinkedList list) {
  Node? slow = list.head;
  Node? fast = list.head;

  while (fast != null && fast.next != null) {
    slow = slow?.next;
    fast = fast.next?.next;
  }
  return slow;
}

void main() {
  var list = LinkedList<int>();
  list.append(1);
  list.append(2);
  list.append(3);
  list.append(4);
  list.append(5);

  print(findMiddleNode(list)?.value); 
}
