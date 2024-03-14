import 'dart:io';

void main() {

  //! task 1
  int x = 10;
  while (x >= 0) {
    print(x);
    x--;
  }

  //! task 2
    for (double i = 0; i <= 1; i += 0.1) {
    print(i.toStringAsFixed(1));
  }

  //! task 3
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  a = a.where((element) => element < 5).toList();
  print(a);

  //! task 4
  int rows = 9;
  for (int i = 0; i < rows; i++) {
    for (int j = (rows - i); j > 1; j--) {
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
  
  //! task 5
  for (var i = 0; i < 5; i++) {
    for (var j = 0; j <= i; j++) {
      stdout.write('*');
    }
    stdout.writeln();
  }
}
