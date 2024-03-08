import 'dart:async';
import 'dart:math';

void main() async {
  String quote = await fetchRandomQuote();
  print("Random Quote: $quote");
}

Future<String> fetchRandomQuote() async {
  await Future.delayed(Duration(seconds: 2));

  List<String> quotes = [
    "The only limit to our realization of tomorrow will be our doubts of today. - Franklin D. Roosevelt",
    "dont let a person who already sleep to wake you-up. - some one",
    "Success is not final, failure is not fatal: It is the courage to continue that counts. - Winston Churchill"
  ];

  Random random = Random();
  int index = random.nextInt(quotes.length);

  return quotes[index];
}
