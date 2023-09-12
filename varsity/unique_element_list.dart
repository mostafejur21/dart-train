List<int> unique_element_list(List<int> given_list) {
  Set<int> unique_list = {};
  for (int number in given_list) {
    unique_list.add(number);
  }
  return unique_list.toList();
}

void main(){
  List<int> given_list = [1, 2, 2, 3, 4, 4, 5];
  print(unique_element_list(given_list));
}