import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("OctoImage Example")),
        body: Center(
          child: OctoImage(
            image: NetworkImage('https://via.placeholder.com/150'),
            placeholderBuilder: OctoPlaceholder.blurHash(
                'LEHV6nWB2yk8pyo0adR*.7kCMdnj'), // Correct usage
            errorBuilder: (context, error, stackTrace) =>
                Icon(Icons.error, color: Colors.red), // Correcting errorBuilder
          ),
        ),
      ),
    );
  }
}
