class Person {
  String name;
  int age;
  Person(this.name, this.age);
}
class Student extends Person {
  int rollNumber;
  List<int> marks;
  Student(String name, int age, this.rollNumber, this.marks)
      : super(name, age);
  int calculateTotalMarks() {
    return marks.reduce((a, b) => a + b);
  }
  double calculateAverage() {
    return calculateTotalMarks() / marks.length;
  }
}
void main() {
  final marksList = [50, 60, 70, 80, 90];
  final student1 = Student('John Doe', 20, 1, marksList);
  final student2 = Student('Jane Doe', 22, 2, [70, 80, 90, 100]);

  print('Total marks of student1: ${student1.calculateTotalMarks()}');
  print('Average marks of student1: ${student1.calculateAverage()}');

  print('Total marks of student2: ${student2.calculateTotalMarks()}');
  print('Average marks of student2: ${student2.calculateAverage()}');
}
