int largest(List<int> given_list) {
  int largest = given_list[0];
  for (int i = 1; i < given_list.length; i++) {
    if (given_list[i] > largest) {
      largest = given_list[i];
    }
  }
  return largest;
}

void main() {
  List<int> given_list = [5, 12, 9, 42, 25];
  print(largest(given_list));
}
