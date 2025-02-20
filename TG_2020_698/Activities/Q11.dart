
void main() {
  var originalList = [1, 2, 2, 3, 4, 4, 5];

  // Call newList function and print the result
  print("List without Duplicates: ${newList(originalList)}");
}

// Function to remove duplicates and return a new list
List<T> newList<T>(List<T> list) {
  return list.toSet().toList(); // Convert to Set to remove duplicates, then back to List
}


