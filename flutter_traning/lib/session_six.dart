void main() {
  Car firstCar = Car(name: 'BMW', model: '2024', color: 'Grey');
  print(firstCar.name);
  print(firstCar.model);
  print(firstCar.color);
  var bert = Student(firstName: 'Bert', lastName: 'Gon', grade: 95);
  bert.studentGrade();
  Student ernie = Student(firstName: 'Ernie', lastName: 'Gon', grade: 85);
  ernie.studentGrade();
  var area = Rectangle(width: 12, height: 5);
  area.areaMethod();
  Square square = Square(width: 4, height: 3);
  square.areaMethod();
  Kalashnikov ak47 = Kalashnikov(
      numberOfShots: 30, name: 'AK-47', color: 'black', height: 0.85);
  Arbj arbj92 =
      Arbj(numberOfShots: 10, price: 800, color: 'sliver', name: 'ARBJ-92');

  print("Kalashnikov Name: ${ak47.name}");
  print("Arbj Name: ${arbj92.name}");
}

class Car {
  String? name;
  String? model;
  String? color;

  Car({required this.name, required this.model, required this.color});
}

class Student {
  final String firstName;
  final String lastName;
  final int grade;

  Student(
      {required this.firstName, required this.lastName, required this.grade});
  studentGrade() {
    print('Name is: $firstName $lastName and grade is: $grade');
  }
}

class Shape {
  final double width;
  final double height;
  areaMethod() {
    double area = width * height;
    print('Area for the shape is: $area');
  }

  Shape({required this.width, required this.height});
}

class Rectangle extends Shape {
  @override
  areaMethod() {
    // TODO: implement area
    super.areaMethod();
  }

  Rectangle({required super.width, required super.height});
}

class Square extends Shape {
  @override
  areaMethod() {
    // TODO: implement areaMethod
    return super.areaMethod();
  }

  Square({required super.width, required super.height});
}

class Weapon {
  final int numberOfShots;
  final String color;
  final String name;

  Weapon(
      {required this.numberOfShots, required this.color, required this.name});
}

class Kalashnikov extends Weapon {
  final double height;
  Kalashnikov(
      {required this.height,
      required super.numberOfShots,
      required super.color,
      required super.name});
}

class Arbj extends Weapon {
  final double price;
  Arbj(
      {required this.price,
      required super.numberOfShots,
      required super.color,
      required super.name});
}
