void main() {
  // Initialize a map with product details
  var product = {
    'id': 1,
    'name': 'Book',
    'price': 180.00
  };

  // Display original map content
  print("Original Product Details: $product");

  // Add a new key 'category' to the map
  product['category'] = 'Stationery';

  // Display updated map content
  print("Updated Product Details: $product");
}
