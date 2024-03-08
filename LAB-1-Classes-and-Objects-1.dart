class Person {
  String name;
  int age;
  String address;
  Person(this.name, this.age, this.address);
  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}
void main() {
  Person person1 = Person("John Doe", 25, "123 Main Street");
  Person person2 = Person("Jane Smith", 30, "456 Oak Avenue");
  print("Before Modification:");
  person1.displayInfo();
  person1.age = 26;
  person1.address = "456 Elm Avenue";
  print("\nAfter Modification:");
  person1.displayInfo();
  print("\nInformation about person2:");
  person2.displayInfo();
}
