
void main() {
  int grade1 = 10, grade2 = 3, grade3 = 2, grade4 = 0, grade5 = 2;

  int sumGrades = grade1 + grade2 + grade3 + grade4 + grade5;

  double averageGrades = sumGrades / 5;

  

  print("Hello, good afternoon!");

  if (averageGrades >= 5) {
    print("Dear students, you are aproved, you grade is ${averageGrades.toStringAsFixed(0)}");
  } else if (averageGrades < 4) {
    print("Dear students, you are reproved, you grade is ${averageGrades.toStringAsFixed(0)}");
  } else if (averageGrades >= 4) {
    print("Dear students, you will be put in school recovery, you grade is ${averageGrades.toStringAsFixed(0)}");
  }
}

