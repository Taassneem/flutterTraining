void main() {
  var x = CloudStorage();
  x.save();
  x.retrieve();
  var area = Rectangle();
  area._height = 10;
  area._width = 10;
  print(area.area);
  Account myAccount = Account(1000, 1234567890);
  print('Current balance: ${myAccount.getBalance()}');
  myAccount.deposit(500);
  myAccount.withdraw(200);
  myAccount.withdraw(1500);
  Shape circle = Circle(radius: 5);
  Shape rectangle = Rectangle2(width: 4, height: 6);
  Shape triangle = Triangle(parameter1: 3, parameter2: 4, parameter3: 5);
  printShapeInfo(circle);
  printShapeInfo(rectangle);
  printShapeInfo(triangle);
}

abstract class Storage {
  save() {
    print('Save');
  }

  retrieve() {
    print('Retrieve');
  }
}

class LocalStorage extends Storage {
  @override
  save() {
    super.save();
    print('Save LocalStorage');
  }
}

class CloudStorage extends Storage {
  @override
  retrieve() {
    super.retrieve();
    print('Retrieve CloudStorage');
  }
}

class Rectangle {
  double? _height;
  double? _width;
  double? get height {
    return _height;
  }

  double? get width {
    return _width;
  }

  set height(double? height) {
    if (height == null && height! < 0) {
      print('number not valid');
    } else {
      _height = height;
    }
  }

  set width(double? width) {
    if (width == null && width! < 0) {
      print('number not valid');
    } else {
      _width = width;
    }
  }

  double? get area {
    return (_width ?? 1) * (_height ?? 1);
  }
}

class Account {
  num _balance;
  final int _accountNumber;
  Account(this._balance, this._accountNumber);

  num? getBalance() {
    return _balance;
  }

  int? getAccountNumber() {
    return _accountNumber;
  }

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposit of $amount successful. New balance: $_balance');
    } else {
      print('Invalid deposit amount.');
    }
  }

  void withdraw(double amount) {
    if (amount > 0) {
      if (_balance >= amount) {
        _balance -= amount;
        print('Withdrawal of $amount successful. New balance: $_balance');
      } else {
        print('Insufficient funds.');
      }
    } else {
      print('Invalid withdrawal amount.');
    }
  }
}

abstract class Shape {
  calculateArea();
  calculatePerimeter();
}

class Circle implements Shape {
  final double radius;

  Circle({required this.radius});
  @override
  calculateArea() {
    return radius * radius * 3.14;
  }

  @override
  calculatePerimeter() {
    return 2 * 3.14 * radius;
  }
}

class Rectangle2 implements Shape {
  final double width;
  final double height;

  Rectangle2({required this.width, required this.height});
  @override
  calculateArea() {
    return width * height;
  }

  @override
  calculatePerimeter() {
    return (width + height) * 2;
  }
}

class Triangle implements Shape {
  final double parameter1;
  final double parameter2;
  final double parameter3;

  Triangle(
      {required this.parameter1,
      required this.parameter2,
      required this.parameter3});
  @override
  calculateArea() {
    return (parameter1 + parameter2 + parameter3) / 2;
  }

  @override
  calculatePerimeter() {
    return parameter1 + parameter2 + parameter3;
  }
}

void printShapeInfo(Shape shape) {
  print('Area${shape.calculateArea()}');
  print('Perimetere${shape.calculatePerimeter()}');
}
