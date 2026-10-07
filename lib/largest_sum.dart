void main() {
  List<int> numbers = [25, 10, 45, 5, 30];

  int largest = numbers[0];
  int smallest = numbers[0];

  for (int num in numbers) {
    if (num > largest) {
      largest = num;
    }

    if (num < smallest) {
      smallest = num;
    }
  }

  print("Largest number: $largest");
  print("Smallest number: $smallest");
}