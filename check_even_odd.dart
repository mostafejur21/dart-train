import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int? input = stdin.readLineSync() as int?;

  if (input! % 2 == 0) {
    print("$input is even");
  } else {
    print("$input is Odd");
  }
}
