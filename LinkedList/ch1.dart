import 'Node.dart';

void printInReverse(Node? node) {
  if (node == null) return;
  printInReverse(node.next);
  print(node.value);
}

void main() {
  var list = LinkedList<int>();
  list.append(1);
  list.append(2);
  list.append(3);

  printInReverse(list.head); 
}
