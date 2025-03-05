import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // List of image URLs (all using the same image)
  final List<String> imageUrls = List.generate(
    6, 
    (index) => 'assets/images.jpeg',  // Use the same image path for all grid items
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GridView with Images')),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,           // Number of columns in the grid
              crossAxisSpacing: 10,        // Spacing between columns
              mainAxisSpacing: 10,         // Spacing between rows
            ),
            itemCount: imageUrls.length,   // The number of grid items
            itemBuilder: (context, index) {
              return Card(
                elevation: 4,  // Adds shadow to the card for a raised effect
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),  // Rounded corners for the image
                  child: Image.asset(
                    imageUrls[index],    // Load the same image for all grid items
                    fit: BoxFit.cover,    // Ensures the image fits the container
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
