import 'dart:io';
void main() {
  stdout.write('Enter a number: ');
  final input = stdin.readLineSync();
  final number = int.tryParse(input!);
  if (number == null) {
    print('Invalid input. Please enter a valid number.');
  } else {
    if (number % 2 == 0) {
      print('$number is even.');
    } else {
      print('$number is odd.');
    }
  }
}
