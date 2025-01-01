import 'dart:io';

void triangle() {
  print("enter the base:");
  double? base = double.parse(stdin.readLineSync()!);
  print("enter the height:");
  double? height = double.parse(stdin.readLineSync()!);
  double area = 0.5 * base * height;
  print("area of the triangle: $area");
}
void main() {
  triangle();
}
