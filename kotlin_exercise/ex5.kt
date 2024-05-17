class Rectangle(private val length: Double, private val width: Double) {
    fun calculatePerimeter(): Double {
        return 2 * (length + width)
    }
    fun calculateArea(): Double {
        return length * width
    }
}
class Triangle(private val side1: Double, private val side2: Double, private val side3: Double) {
    fun checkType(): String {
        return when {
            side1 == side2 && side2 == side3 -> "Equilateral"
            side1 == side2 || side2 == side3 || side1 == side3 -> "Isosceles"
            else -> "Scalene"
        }
    }
}
data class ShoppingCartItem(val name: String, val price: Double)
class ShoppingCart {
    private val items = mutableListOf<ShoppingCartItem>()
    fun addItem(item: ShoppingCartItem) {
        items.add(item)
    }
    fun removeItem(item: ShoppingCartItem) {
        items.remove(item)
    }
    fun calculateTotalPrice(): Double {
        var totalPrice = 0.0
        for (item in items) {
            totalPrice += item.price
        }
        return totalPrice
    }
}
fun main() {
    val rectangle = Rectangle(5.0, 3.0)
    println("Rectangle Perimeter: ${rectangle.calculatePerimeter()}")
    println("Rectangle Area: ${rectangle.calculateArea()}")
    val triangle = Triangle(3.0, 4.0, 5.0)
    println("Triangle Type: ${triangle.checkType()}")
    val cart = ShoppingCart()
    cart.addItem(ShoppingCartItem("Item 1", 10.0))
    cart.addItem(ShoppingCartItem("Item 2", 20.0))
    cart.addItem(ShoppingCartItem("Item 3", 30.0))
    println("Total Price: ${cart.calculateTotalPrice()}")
}
