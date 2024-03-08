import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String filePath) async {
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final file = File(filePath);
    await file.writeAsBytes(response.bodyBytes);
    print('Downloaded $url to $filePath');
  } else {
    print('Failed to download $url. Status code: ${response.statusCode}');
  }
}

void main() async {
  const url = 'https://example.com/file.txt';
  const filePath = 'file.txt';

  await downloadFile(url, filePath);
}
