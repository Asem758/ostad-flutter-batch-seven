import 'package:flutter/material.dart';

void main() {
  runApp(MyBagApp());
}

class MyBagApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BagScreen(),
    );
  }
}

class BagScreen extends StatefulWidget {
  @override
  _BagScreenState createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  // List of items in the bag
  final List<Item> items = [
    Item(name: "Pullover", color: "Black", size: "L", price: 51, count: 1),
    Item(name: "T-Shirt", color: "Gray", size: "L", price: 30, count: 1),
    Item(name: "Sport Dress", color: "Black", size: "M", price: 43, count: 1),
  ];

  // Function to calculate total amount
  double getTotalAmount() {
    return items.fold(0, (sum, item) => sum + (item.price * item.count));
  }

  // Function to show Snackbar
  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Congratulations! You have checked out successfully.'),
      duration: Duration(seconds: 2),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bag', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ItemCard(
                    item: items[index],
                    onIncrement: () {
                      setState(() {
                        items[index].count++;
                      });
                    },
                    onDecrement: () {
                      setState(() {
                        if (items[index].count > 1) {
                          items[index].count--;
                        }
                      });
                    },
                  );
                },
              ),
            ),
            // Total amount and checkout button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Total amount: \$${getTotalAmount().toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      showSnackBar(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // Updated from 'primary' to 'backgroundColor'
                      padding: EdgeInsets.all(16),
                    ),
                    child: Text(
                      'CHECK OUT',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Data model for items
class Item {
  String name;
  String color;
  String size;
  double price;
  int count;

  Item({required this.name, required this.color, required this.size, required this.price, this.count = 1});
}

// Widget for individual item card
class ItemCard extends StatelessWidget {
  final Item item;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const ItemCard({
    Key? key,
    required this.item,
    required this.onIncrement,
    required this.onDecrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.network(
              'https://via.placeholder.com/80', // Placeholder for the item image
              width: 80,
              height: 80,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Color: ${item.color}  Size: ${item.size}'),
                ],
              ),
            ),
            Column(
              children: [
                // Row for increment and decrement buttons
                Row(
                  children: [
                    IconButton(
                      onPressed: onDecrement,
                      icon: Icon(Icons.remove),
                    ),
                    Text('${item.count}', style: TextStyle(fontSize: 18)),
                    IconButton(
                      onPressed: onIncrement,
                      icon: Icon(Icons.add),
                    ),
                  ],
                ),
                Text('\$${item.price}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
