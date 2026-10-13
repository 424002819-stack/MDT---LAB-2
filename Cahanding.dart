class Student {
  String name;
  int id;
  List<double> grades;


  Student(this.name, this.id, this.grades);


  void displayInfo() {
    print('----------------------------------------');
    print('Student Name: $name');
    print('Student ID  : $id');
  }
}


void computeGrade(List<double> grades) {
  double sum = 0;
  for (double grade in grades) {
    sum += grade;
  }
  double average = sum / grades.length;


  print('Average Grade: ${average.toStringAsFixed(2)}');


  if (average >= 75) {
    print('Status       : Passed');
  } else if (average >= 70) {
    print('Status       : Conditional');
  } else {
    print('Status       : Failed');
  }
  print('----------------------------------------');
}


void main() {
  String name = 'Glenbert Aim P. Cahanding';
  int id = 123456;
  List<double> grades = [85.5, 78.0, 90.25];


  Student student = Student(name, id, grades);
  student.displayInfo();


  print('Grades Summary:');
  for (int i = 0; i < student.grades.length; i++) {
    print('  Subject ${i + 1}: ${student.grades[i]}');
  }


  computeGrade(student.grades);
}
