import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLUTTER WEB. THE BASICS'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "FLUTTER WEB. THE BASICS",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12),
              Text(
                "A responsive website using Flutter Web that can run on Desktop, Tablet, and Mobile devices.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {},
                child: Text("GET STARTED"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
