void main() {
  Map<String, int> studentMarks = {};
  studentMarks.putIfAbsent("Alice", () => 90);
  studentMarks.putIfAbsent("Bob", () => 85);
  studentMarks.putIfAbsent("Charlie", () => 92);
  print("Initial student mark: $studentMarks");
  print("Iterating over the Map:");
  studentMarks.forEach((name, marks) {
    print("$name: $marks");
  });
  String searchName = "Bob";
  if (studentMarks.containsKey(searchName)) {
    int marks = studentMarks[searchName]!;
    print("$searchName's marks: $marks");
  } else {
    print("$searchName not found in the map.");
  }
}
