import 'dart:math';

//1
void printMyName() {
  print("Your Name");
}

// 2
void printEvenNumbers(int start, int end) {
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) print(i);
  }
}

// 3
void greet(String name) {
  print("Hello, $name");
}

// 4

String generatePassword(int length) {
  const chars =
      "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()";
  Random rand = Random();
  return List.generate(length, (index) => chars[rand.nextInt(chars.length)])
      .join();
}

// 5
double circleArea(double radius) {
  return pi * radius * radius;
}

// 6
String reverseString(String input) {
  return input.split('').reversed.join('');
}

// 7
int power(int base, int exponent) {
  return pow(base, exponent).toInt();
}

// 8
int add(int num1, int num2) {
  return num1 + num2;
}

// 9
int maxNumber(int a, int b, int c) {
  return [a, b, c].reduce(max);
}

// 10
bool isEven(int num) {
  return num % 2 == 0;
}

// 11
void createUser(String name, int age, {bool isActive = true}) {
  print("User: Name = $name, Age = $age, Active = $isActive");
}

// 12
double calculateArea({double length = 1, double width = 1}) {
  return length * width;
}

void main() {
  printMyName();
  printEvenNumbers(1, 20);
  greet("yasmine");
  print("Generated Password: ${generatePassword(8)}");
  print("Circle Area: ${circleArea(5)}");
  print("Reversed String: ${reverseString("hello")}");
  print("Power Calculation: ${power(5, 3)}");
  print("Sum: ${add(10, 5)}");
  print("Max Number: ${maxNumber(10, 20, 30)}");
  print("Is 4 even? ${isEven(4)}");
  createUser("Alice", 25);
  print("Rectangle Area: ${calculateArea(length: 5, width: 4)}");
}
