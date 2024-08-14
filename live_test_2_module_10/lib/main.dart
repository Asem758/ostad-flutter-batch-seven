import 'package:flutter/material.dart';

void main() {
  runApp(TextStylingApp());
}

class TextStylingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Styling App'),
          backgroundColor: Colors.pinkAccent.shade100,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Flutter Text Styling',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              Text(
                'Experiment with text styles',
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text('You clicked the button!'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text(
                  'Click Me',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.purple,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Welcome to Flutter!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.pink.shade50,
      ),
    );
  }
}
