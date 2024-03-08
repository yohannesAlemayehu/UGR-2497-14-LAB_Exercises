import 'dart:io';
void main() {
  const int speedOfLight = 299792458; 
  print("Enter the distance in meters:");
  double distance = double.parse(stdin.readLineSync()!);
  double time = distance / speedOfLight;
  print("It takes $time sec for the light to travel $distance meters.");
}
