import 'dart:io';
import 'dart:math';

void main() {
  int randomNumber = Random().nextInt(100) + 1;
  stdout.write("Guess a number between 1 to 100: ");
  int guess = int.parse(stdin.readLineSync()!);
  while (guess != randomNumber) {
    if (guess < randomNumber) {
      print("Too low");
    } else {
      print("Too high");
    }
    stdout.write("Guess again: ");
    guess = int.parse(stdin.readLineSync()!);
  }
  print("You guessed it right! The number was $randomNumber");
}
