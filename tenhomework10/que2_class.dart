/* Q2 
Model shapes to compute total paintable area and cost. 
Requirements: 
- Provide a general shape type (concrete class) with an area() method that can be
 overridden. 
- Implement at least three concrete shape types with encapsulated dimensions 
and validated 
constructors (invalid → print; keep previous). 
- Use polymorphism with a mixed collection of shapes to compute total area
 (no type checks in client code). 
- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 
1.00; print total area and total 
cost to 2 decimals. */
class Shape {
  double area() {
    return 1;
  }
}

class Circle extends Shape {
  double _radius = 1;
  Circle({required double radius}) {
    if (radius > 0) {
      this._radius = radius;
    } else {
      print('invaild value');
    }
  }
  set radius(double radius) {
    if (radius > 0) {
      this._radius = radius;
    } else {
      print('invaild value');
    }
  }

  double get radius => this._radius;
  @override
  double area() {
    return 3.1415 * (this._radius * this._radius);
  }
}

class Rectangle extends Shape {
  double _width = 1;
  double _height = 1;
  Rectangle({required double width, required double height}) {
    if (height > 0) {
      this._height = height;
    } else {
      print('invaild value');
    }
    if (width > 0) {
      this._width = width;
    } else {
      print('invaild value');
    }
  }
  set width(double width) {
    if (width > 0) {
      this._width = width;
    } else {
      print('invaild value');
    }
  }

  set height(double height) {
    if (height > 0) {
      this._height = height;
    } else {
      print('invaild value');
    }
  }

  double get height => this._height;
  double get width => this._width;
  @override
  double area() {
    return this._width * this._height;
  }
}

class Square extends Shape {
  double _side = 1;
  Square({required double side}) {
    if (side > 0) {
      this._side = side;
    } else {
      print('invaild value');
    }
  }
  set side(double side) {
    if (side > 0) {
      this._side = side;
    } else {
      print('invaild value');
    }
  }

  double get side => this._side;
  @override
  double area() {
    return this._side * this._side;
  }
}
