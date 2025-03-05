import 'package:flutter/material.dart';

void main() {
  runApp(QuickBiteApp());
}

class QuickBiteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuickBite',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QuickBite - Food Delivery'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return FoodCard(
            foodName: 'Food Item ${index + 1}',
            imagePath: 'assets/food_${index + 1}.jpeg',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodDetailsScreen(
                    foodName: 'Food Item ${index + 1}', 
                    foodImage: 'assets/food_${index + 1}.jpeg',
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final String foodName;
  final String imagePath;
  final Function onTap;

  const FoodCard({required this.foodName, required this.imagePath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: InkWell(
        onTap: () => onTap(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 100, width: 100, fit: BoxFit.cover),
            SizedBox(height: 10),
            Text(foodName, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

class FoodDetailsScreen extends StatelessWidget {
  final String foodName;
  final String foodImage;

  const FoodDetailsScreen({required this.foodName, required this.foodImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foodName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(foodImage, height: 250, width: 250, fit: BoxFit.cover),
            SizedBox(height: 20),
            Text(foodName, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Description of the food item goes here.'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartScreen()),
                );
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.fastfood),
                  title: Text('Food Item ${index + 1}'),
                  subtitle: Text('Price: \$10'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Checkout'),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: John Doe'),
            SizedBox(height: 10),
            Text('Email: johndoe@example.com'),
            SizedBox(height: 10),
            Text('Address: 1234 Elm Street, City, Country'),
          ],
        ),
      ),
    );
  }
}
