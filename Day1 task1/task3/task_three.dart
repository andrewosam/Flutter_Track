bool customEvery(List<int> list, bool Function(int) condition) {
  for (int element in list) {
    if (!condition(element)) {
      return false;
    }
  }
  return true;
}

void main() {
  List<int> inputList = [1, 2, 3, 4];
  bool result = customEvery(inputList, (int elem) => elem == 2);
  print(result);  
}
