import 'package:flutter/material.dart';

void main() {
  runApp(EventApp());
}

class EventApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: EventScreen(),
    );
  }
}

class EventScreen extends StatefulWidget {
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  bool isRegistered = false;

  void registerForEvent() {
    setState(() {
      isRegistered = !isRegistered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Event Manager"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.event, size: 100, color: Colors.blue),
            SizedBox(height: 20),
            Text("Tech Conference", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("Date: 15th June 2025", style: TextStyle(fontSize: 18)),
            Text("Venue: Grand Hall", style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text(
              isRegistered ? "Registered!" : "Not Registered",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: isRegistered ? Colors.green : Colors.red),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: isRegistered ? Colors.grey : Colors.blue,
                ),
                onPressed: registerForEvent,
                child: Text(
                  isRegistered ? "Cancel Registration" : "Register",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
