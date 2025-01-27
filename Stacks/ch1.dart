void reverseList(List<int> list) {
  for (int i = list.length - 1; i >= 0; i--) {
    print(list[i]);
  }
}

void main() {
  reverseList([1, 2, 3, 4, 5]); // Output: 5, 4, 3, 2, 1
}
