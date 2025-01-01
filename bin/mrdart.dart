import 'dart:io';

// Abstract class for Role
abstract class Role {
  void displayRole();
}

// Base class Person
class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  @override
  void displayRole() {
    // Will be overridden by child classes
  }
}

// Class Student extending Person
class Student extends Person {
  String studentID;
  String grade;
  List<int> courseScores;

  Student(String name, int age, String address, this.studentID, this.grade, this.courseScores)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {
    return courseScores.reduce((a, b) => a + b) / courseScores.length;
  }

  void displayInfo() {
    print("\nStudent Information:");
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Average Score: ${calculateAverageScore().toStringAsFixed(1)}");
  }
}

// Class Teacher extending Person
class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(String name, int age, String address, this.teacherID, this.coursesTaught)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayInfo() {
    print("\nTeacher Information:");
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Courses Taught:");
    for (var course in coursesTaught) {
      print("- $course");
    }
  }
}

// Main class StudentManagementSystem
void main() {
  // Create instances of Student and Teacher
  Student student = Student(
      'John Doe', 20, "123 Main Street", "S123", "A", [90, 85, 82]);
  Teacher teacher = Teacher(
      'Mrs. Smith', 35, "456 Oak St", "T456", ["Math", "English", "Bangla"]);

  // Display their information
  student.displayInfo();
  teacher.displayInfo();
}
