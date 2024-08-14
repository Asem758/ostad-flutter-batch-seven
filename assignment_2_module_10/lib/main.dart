import 'package:flutter/material.dart';

void main() {
  runApp(GreetingApp());
}

class GreetingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Greeting App'),
          backgroundColor: Colors.pinkAccent.shade100,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello, World!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Welcome to Flutter!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 16),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
                height: 150,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Add your onPressed code here!
                },
                child: Text('Press Me'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent.shade700,
                  onPrimary: Colors.white,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.pink.shade50,
      ),
    );
  }
}
