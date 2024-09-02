import 'package:flutter/material.dart';

class TabletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLUTTER WEB. THE BASICS'),
        actions: [
          TextButton(onPressed: () {}, child: Text("ABOUT")),
          TextButton(onPressed: () {}, child: Text("SERVICES")),
          TextButton(onPressed: () {}, child: Text("CONTACT")),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "FLUTTER WEB. THE BASICS",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                "A responsive website using Flutter Web that can run on Desktop, Tablet, and Mobile devices.",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
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
