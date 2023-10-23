int custom_reducer(List<int> list, int Function(int, int) reducer, int initialValue) {
  int accumulator = initialValue;
  for (int element in list) {
    accumulator = reducer(accumulator, element);
  }
  return accumulator;
}

void main() {
  List<int> myList = [1, 2, 3, 4];
  int result = custom_reducer(myList, (int acc, int el) => el + acc, 15);
  print(result); 
}
