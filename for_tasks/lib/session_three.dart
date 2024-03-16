// ignore_for_file: avoid_print

import 'dart:io';

void main() {
  //! Task 1
  print('Enter any number');
  int number = int.parse(stdin.readLineSync()!);
  if (number % 5 == 0 && number % 3 == 0) {
    print('FIZZBUZZ');
  } else if (number % 3 == 0) {
    print('BUZZ');
  } else if (number % 5 == 0) {
    print('FIZZ');
  } else {
    print('Not dividable');
  }

  //! Task 2
  print('Enter any two number');
  int x = int.parse(stdin.readLineSync()!);

  int y = int.parse(stdin.readLineSync()!);
  String operator = '-';
  switch (operator) {
    case '+':
      print(x + y);
      break;
    case '-':
      print(x - y);
      break;
    case '*':
      print(x * y);
      break;
    case '/':
      print(x / y);
      break;

    default:
      print('wrong');
  }

  //! Task 3
  print('Enter word');
  String word = stdin.readLineSync()!;
  String reversed = word.split('').reversed.join('');
  word == reversed ? print('palindrome') : print('not palindrome');
}
