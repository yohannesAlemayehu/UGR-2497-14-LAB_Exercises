import 'dart:io';
void main() {
  try {
    print("Enter a number:");
    String userInput = stdin.readLineSync()!;
    int convertedNumber = int.parse(userInput);
    print("Successfully converted to integer: $convertedNumber");
  } catch (e) {
    print("Error: $e");
  }
}
