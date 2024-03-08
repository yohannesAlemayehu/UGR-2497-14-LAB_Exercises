void main() {
  print("Enter a string:");
  String inputString = "i am yohannes";

  String reversedString = reverse(inputString);

  print("Reversed string: $reversedString");
}
String reverse(String input) {
  List<String> characters = input.split('');
  characters = characters.reversed.toList();
  return characters.join('');
}
