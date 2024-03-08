class Rectangle {
  double width;
  double height;
  Rectangle(this.width, this.height);
  double calculateArea() {
    return width * height;
  }
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}
void main() {
  Rectangle myRectangle = Rectangle(5.0, 8.0);

  print("Rectangle with width ${myRectangle.width} and height ${myRectangle.height}:");
  print("Area: ${myRectangle.calculateArea()}");
  print("Perimeter: ${myRectangle.calculatePerimeter()}");
}
