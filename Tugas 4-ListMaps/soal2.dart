void main() {
List<int> rangeWithStep(int num1, int num2, int step) {
  List<int> result = [];

  if (num1 < num2) {
    // Ascending order
    for (int i = num1; i <= num2; i += step) {
      result.add(i);
    }
  } else {
    // Descending order
    for (int i = num1; i >= num2; i -= step) {
      result.add(i);
    }
  }

  return result;
}

  // Contoh penggunaan fungsi
  print(rangeWithStep(1, 10, 3));   
  print(rangeWithStep(10, 1, 3));   
}
