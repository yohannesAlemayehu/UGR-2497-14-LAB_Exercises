import 'dart:async';
import 'dart:io';

void main() async {
  final filename = 'LAB-1-Asynchronous Programming-1.dart';

  try {
    final file = File(filename);
    final contents = await file.readAsString();
    print('File contents: $contents');
  } on FileSystemException catch (e) {
    if (e.osError != null && e.osError!.errorCode == 2) {
      print('File not found: $filename');
    } else {
      print('An error occurred while reading the file: $e');
    }
  }
}
