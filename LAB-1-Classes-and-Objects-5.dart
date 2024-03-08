class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14159 * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}
void main() {
  Product myProduct = Product("Soap", 10.99, 5);
  Circle myCircle = Circle(5.0);
  Square mySquare = Square(4.0);

  print("Product Total Cost: \$${myProduct.calculateTotalCost()}");
  print("Circle Area: ${myCircle.calculateArea()}");
  print("Square Area: ${mySquare.calculateArea()}");
}
