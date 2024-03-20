import 'dart:io';

void main() {

  //! Task one
  double radius = 2;
  double pi = 3.14;
  double area = pi * radius * radius;
  print('Area of circule is $area');
  
  //! Task two
  print('Enter fahrenheit degree');
  double fahrenheit;
  fahrenheit = double.parse(stdin.readLineSync()!);
  double celsius = 5 / 9 * (fahrenheit - 32);
  stdout.writeln('Celsius is $celsius');
  
  //! Task three
  double rating1 = 25.3,
      rating2 = 351,
      rating3 = 96.7,
      average = (rating1 + rating3 + rating2) / 3;
  double averageRating = average;
  print('The average is $averageRating');

}
