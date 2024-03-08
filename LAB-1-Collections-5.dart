class Student {
  final String name;
  final List<double> marks;

  Student(this.name, this.marks);

  double get averageMark {
    if (marks.isEmpty) {
      throw StateError('Cannot calculate the average mark for a student with no marks.');
    }

    return marks.reduce((a, b) => a + b) / marks.length;
  }
}

void main() {
  final student = Student('John Doe', [80.0, 90.0, 85.0]);

  try {
    print('Average mark: ${student.averageMark}');
  } on StateError catch (e) {
    print(e);
  }
}
