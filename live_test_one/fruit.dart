//Code execution block
void main() {
  //A list, that contrain fruit details.
  List<Map<String, String>> fruit_menu = [
    {'Name': 'Mango', 'Color': 'Green', 'Price': '20'},
    {'Name': 'Banana', 'Color': 'Yellow', 'Price': '70'},
    {'Name': 'Apple', 'Color': 'Red', 'Price': '50'}
  ];

  //Function calling
  displayFruitDetails(fruit_menu);
  applyPriceDiscount(fruit_menu, 33);
}

//This function will fetch through a list, and print the output.
void displayFruitDetails(List<Map<String, String>> item) {
  print('Regular price:');
  //for loop
  for (Map<String, String> fruit in item) {
    print('${fruit.toString()}\n');
  }
}

//This function will apply the discount to all items.
void applyPriceDiscount(List<Map<String, String>> item, double percent) {
  print('You are getting $percent% discount:');
  //for loop
  for (Map<String, String> fruit in item) {
    double orginalPrice = double.parse(fruit['Price'] ?? '0');
    double discounntedPrice = (orginalPrice - ((orginalPrice / 100) * percent));
    fruit['Price'] = "${discounntedPrice.toStringAsFixed(2)}";
    print('${fruit.toString()}\n');
  }
}
