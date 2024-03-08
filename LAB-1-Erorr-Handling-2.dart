void main() {
  try {
    print(divideNumbers(10, 2)); 
    print(divideNumbers(8, 0));  
  } catch (e) {
    print("Error: $e");
  }
}
double divideNumbers(double dividend, double divisor) {
  if (divisor == 0) {
    throw Exception("Cannot divide by zero");
  }
  return dividend / divisor;
}
