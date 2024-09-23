// Standard Function: Calculate the total price with optional tax parameter.
double calculateTotal(List<double> prices, {double taxRate = 0.0}) {
  double total = prices.reduce((sum, price) => sum + price);
  return total + (total * taxRate);
}

// Anonymous Function: Filter out items with a price below a certain threshold.
List<double> filterExpensiveItems(List<double> prices, double threshold) {
  return prices.where((price) => price >= threshold).toList();
}

// Higher-Order Function: Apply discount to the list of prices.
List<double> applyDiscount(List<double> prices, double Function(double) discountFunction) {
  return prices.map((price) => discountFunction(price)).toList();
}

// Recursive Function: Calculate factorial discount based on the number of items.
int calculateFactorialDiscount(int n) {
  if (n <= 1) return 1;
  return n * calculateFactorialDiscount(n - 1);
}

void main() {
  // Example list of item prices in the cart.
  List<double> cartPrices = [15.0,  45.0, 9.0, 10.0, 7.0, 30.0];
  //There are 6 items in the list
  double taxRate = 0.03; // 3% tax rate
  double discountPercentage = 0.10; // 10% discount
  double priceThreshold = 10.0; // Minimum price threshold

  // Step 1: Filter out items below the threshold.
  List<double> filteredCart = filterExpensiveItems(cartPrices, priceThreshold);
  print('Filtered Cart: $filteredCart');

  // Step 2: Apply discount to all items in the filtered cart.
  List<double> discountedCart = applyDiscount(filteredCart, (price) => price * (1 - discountPercentage));
  print('Discounted Cart: $discountedCart');

  // Step 3: Calculate the total after applying the discount and tax.
  double totalPrice = calculateTotal(discountedCart, taxRate: taxRate);
  print('Total Price after Discount and Tax: \$${totalPrice.toStringAsFixed(2)}');

  // Step 4: Apply a special discount based on the factorial of the number of items.
  //There are 6 items in the list
  //The factorial discount will be 6! percent
  int factorialDiscount = calculateFactorialDiscount(filteredCart.length);
  double finalPrice = totalPrice * (1 - factorialDiscount / 100);
  print('Final Price after Factorial Discount: \$${finalPrice.toStringAsFixed(2)}');
}
