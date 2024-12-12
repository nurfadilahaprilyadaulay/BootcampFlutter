void main() {
List<int> range(int num1, int num2) {
  List<int> result = [];

  if (num1 < num2) {
    // Ascending order
    for (int i = num1; i <= num2; i++) {
      result.add(i);
    }
  } else {
    // Descending order
    for (int i = num1; i >= num2; i--) {
      result.add(i);
    }
  }

  return result;
}

  // Contoh penggunaan fungsi
  print(range(1, 5));   // Output: [1, 2, 3, 4, 5]
  print(range(5, 1));   // Output: [5, 4, 3, 2, 1]
}
