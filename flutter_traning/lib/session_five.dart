void main() {
  // Example usage
  print(youAreWonderful("Bob"));
  primeNumber(n: 1);
  primeNumber2(10);
  primeNumber3(14);
  print(calculateArea(5, 4));
  print(findEvenNumbers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
  print(greetUser("Alice"));
  print(greetUser("Bob", 25));
  print(isPalindrome("racecar"));
  print(isPalindrome("hello"));
}

//! task 1
String youAreWonderful(String name) {
  return "You're wonderful $name.";
}

//! task 2
// named
void primeNumber({required int n}) {
  if (n == 1 || n == 0) {
    print('Number is not prime.');
  }
  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      print('Number is not prime.');
    }
  }
}

// required
void primeNumber2(int n) {
  if (n == 1 || n == 0) {
    print('Number is not prime.');
  }
  for (int i = 2; i < n; i++) {
    if (n % i == 0) print('Number is not prime.');
  }
}

// optional
void primeNumber3([int? n]) {
  if (n == 1 || n == 0) {
    print('Number is not prime.');
  }
  for (int i = 2; i * i < n!;) {
    if (n % i == 0) print('Number is not prime.');
  }
}

//! task 3
double calculateArea(double length, double width) {
  double area = length * width;
  return area;
}

//! task 4
List<int> findEvenNumbers(List<int> numbers) {
  List<int> evenNumbers = [];
  for (int number in numbers) {
    if (number % 2 == 0) {
      evenNumbers.add(number);
    }
  }
  return evenNumbers;
}

//! task 5
String greetUser(String name, [int? age]) {
  if (age != null) {
    return "Hello $name, you are $age years old.";
  } else {
    return "Hello $name!";
  }
}

//! task 6
bool isPalindrome(String str) {
  String word = str;
  String reversed = word.split('').reversed.join('');
  return word == reversed;
}
