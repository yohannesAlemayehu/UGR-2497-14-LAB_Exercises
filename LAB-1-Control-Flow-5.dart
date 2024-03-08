import 'dart:io';
void main() {
  print("Enter your grade (0-100):");
  int grade = int.parse(stdin.readLineSync()!);
  String letterGrade;
  if (grade >= 90 && grade <=100){
    letterGrade = 'A+'
  } else if (grade >= 83 && grade < 90) {
    letterGrade = 'A';
  } else if (grade >=80 && grade < 83) {
    letterGrade = 'A-';
  } else if (grade >= 75 && grade < 80) {
    letterGrade = 'B+';
  } else if (grade >= 68 && grade < 75) {
    letterGrade = 'B';
  } else if (grade >=65  && grade < 68) {
    letterGrade = 'B-';
  }else if (grade >=55  && grade < 60) {
    letterGrade = 'C+';
  } else if (grade >= 50 && grade < 55) {
    letterGrade = 'C';
  }else if (grade >= 45 && grade < 50) {
    letterGrade = 'C-';
  }else if (grade >= 40 && grade < 45) {
    letterGrade = 'D';
  } else if (grade >= 0 && grade < 40) {
    letterGrade = 'F';
  } else {
    print("Invalid grade. Please enter a grade between 0 and 100.");
    return;
  }

  print("Your letter grade is: $letterGrade");
}
