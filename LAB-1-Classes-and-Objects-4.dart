class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  Product myProduct = Product("soap", 10.99, 5);

  print("Product: ${myProduct.name}");
  print("Price: \$${myProduct.price}");
  print("Quantity: ${myProduct.quantity}");
  print("Total Cost: \$${myProduct.calculateTotalCost()}");
}
