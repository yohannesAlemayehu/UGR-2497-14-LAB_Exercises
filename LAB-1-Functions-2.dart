import 'dart:io';
void main() {
  print("Enter the start of the range:");
  int start = int.parse(stdin.readLineSync()!);

  print("Enter the end of the range:");
  int end = int.parse(stdin.readLineSync()!);

  print("Prime numbers in the range $start to $end:");

  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}
