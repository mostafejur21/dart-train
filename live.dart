import 'dart:io';

List<int> getOddNumbers(List<int> numbers) {
  List<int> oddNumbers = [];
  for (int number in numbers) {
    if (number % 2 != 0) {
      oddNumbers.add(number);
    }
  }
  return oddNumbers;
}


void main() {
  // Take input from the user
  stdout.write('Enter a list of numbers: ');
  String input = stdin.readLineSync()!;
  List<String> inputList = input.split(',');
  List<int> numbers = [];
  for (String number in inputList) {
    numbers.add(int.parse(number));
  }

  // Get the odd numbers from the input list
  List<int> oddNumbers = getOddNumbers(numbers);

  // Print the input list and the output list
  print('Input list: $numbers');
  print('Odd numbers: $oddNumbers');
}