void main() {
  String name = "Saniya";

  int marks1 = 75;
  int marks2 = 68;
  int marks3 = 82;

  int total = marks1 + marks2 + marks3;
  double percentage = total / 3;

  print("Student Name: $name");
  print("Total Marks: $total");
  print("Percentage: $percentage");

  if (percentage >= 40) {
    print("Result: Pass");
  } else {
    print("Result: Fail");
  }
}