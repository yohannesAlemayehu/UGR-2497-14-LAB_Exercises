void main() {
  List<String> favoriteHobbies = [];

  favoriteHobbies.add("Reading");
  favoriteHobbies.add("Hiking");
  favoriteHobbies.add("Cooking");
  favoriteHobbies.add("Gaming");
  print("Favorite Hobbies: $favoriteHobbies");
  if (favoriteHobbies.isEmpty) {
    print("The list of favorite hobbies is empty.");
  } else {
    print("The list of favorite hobbies is not empty.");
  }
  favoriteHobbies.remove("Cooking");
  print("Updated List after Removing 'Cooking': $favoriteHobbies");
  favoriteHobbies.sort();
  print("Sorted List of Favorite Hobbies: $favoriteHobbies");
}
