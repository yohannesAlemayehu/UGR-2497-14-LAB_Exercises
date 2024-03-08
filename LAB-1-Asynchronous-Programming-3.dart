import 'dart:async';

void main() async {
  print("Loading...");

  try {
    List<String> data = await loadDataFromDatabase();
    print("Data:");
    for (String item in data) {
      print(item);
    }
  } catch (e) {
    print("Error loading data: $e");
  }
}

Future<List<String>> loadDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 3));

  List<String> simulatedData = ["Item 1", "Item 2", "Item 3"];

  return simulatedData;
}

