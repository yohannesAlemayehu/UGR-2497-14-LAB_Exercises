import 'dart:convert';
import 'dart:io';

void main() async {
  try {
    String apiKey = 'https://rapidapi.com/blog/access-global-weather-data-with-these-weather-apis/'; 
    String city = 'London';

    WeatherData weatherData = await fetchWeatherData(apiKey, city);

    print("Weather in $city:");
    print("Temperature: ${weatherData.temperature}°C");
    print("Conditions: ${weatherData.conditions}");
  } catch (e) {
    print("Error fetching weather data: $e");
  }
}

class WeatherData {
  final double temperature;
  final String conditions;

  WeatherData({required this.temperature, required this.conditions});
}

Future<WeatherData> fetchWeatherData(String apiKey, String city) async {
  final String apiUrl = 'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric';

  HttpClient httpClient = HttpClient();

  try {
    HttpClientRequest request = await httpClient.getUrl(Uri.parse(apiUrl));
    HttpClientResponse response = await request.close();

    if (response.statusCode == 200) {
      String responseBody = await response.transform(utf8.decoder).join();
      Map<String, dynamic> data = json.decode(responseBody);

      double temperature = data['main']['temp'].toDouble();
      String conditions = data['weather'][0]['description'];

      return WeatherData(temperature: temperature, conditions: conditions);
    } else {
      throw Exception('Failed to fetch weather data: ${response.statusCode}');
    }
  } finally {
    httpClient.close();
  }
}
