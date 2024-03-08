import 'dart:math';
void main() {
  List<int> randomNumbers = generateRandomNumbers(20);
  print("Original List of Random Numbers: $randomNumbers");
  Set<int> uniqueNumbersSet = Set<int>.from(randomNumbers);
  List<int> uniqueNumbersList = uniqueNumbersSet.toList();
  print("Unique Numbers: $uniqueNumbersList");
}
List<int> generateRandomNumbers(int count) {
  Random random = Random();
  List<int> numbers = List.generate(count, (index) => random.nextInt(100));
  return numbers;
}
