class Product {
  final String name;
  final double price;

  Product(this.name, this.price);
}

class ShoppingCart {
  final Map<Product, int> _cart = <Product, int>{};

  void addItem(Product product, int quantity) {
    if (_cart.containsKey(product)) {
      _cart[product] = _cart[product]! + quantity;
    } else {
      _cart[product] = quantity;
    }
  }

  void removeItem(Product product) {
    _cart.remove(product);
  }

  double get totalPrice {
    return _cart.entries.map((entry) => entry.key.price * entry.value).reduce((a, b) => a + b);
  }

  void printCart() {
    print('Shopping Cart:');
    for (final entry in _cart.entries) {
      print('${entry.key.name}: ${entry.value} x ${entry.key.price} = ${entry.value * entry.key.price}');
    }
    print('Total: ${totalPrice}');
  }
}

void main() {
  final cart = ShoppingCart();

  final apple = Product('apple', 1.5);
  final banana = Product('banana', 0.8);
  final orange = Product('orange', 1.2);

  cart.addItem(apple, 5);
  cart.addItem(banana, 10);
  cart.addItem(orange, 3);

  cart.printCart();

  cart.removeItem(banana);

  cart.printCart();
}
