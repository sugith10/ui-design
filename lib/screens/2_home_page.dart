import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // Define a list of maps, where each map contains an image asset path and text
  final List<Map<String, String>> gridItems = [
    {
      'imagePath': 'lib/icons/1.png',
      'text': 'Marketing \nDesigns',
    },
    {
      'imagePath': 'lib/icons/2.png',
      'text': 'Online \nPayments',
    },
    {
      'imagePath': 'lib/icons/3.png',
      'text': 'Discount \nCoupons',
    },
    {
      'imagePath': 'lib/icons/4.jpg',
      'text': 'My \nCoustomers',
    },
    {
      'imagePath': 'lib/icons/5.png',
      'text': 'Store \nQR Code',
    },
    {
      'imagePath': 'lib/icons/6.jpg',
      'text': 'Extra \nCharges',
    },
    {
      'imagePath': 'lib/icons/7.png',
      'text': 'Order \nForm',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
            child: Text('Manage Store', style: TextStyle(letterSpacing: .8))),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid
            childAspectRatio: 1.5, // Aspect ratio of each grid item
            crossAxisSpacing: 16.0, // Add horizontal spacing between items
            mainAxisSpacing: 16.0, // Add vertical spacing between items
          ),
          itemCount: gridItems.length, // Number of items in the grid
          itemBuilder: (BuildContext context, int index) {
            // Build your grid item here
            final imagePath = gridItems[index]['imagePath'] ?? '';
            final text = gridItems[index]['text'];
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        imagePath,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('$text'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: 0, // Set the current index of the selected item
        selectedItemColor: Colors.grey, // Color of the selected item
        unselectedItemColor: Colors.grey, // Color of unselected items
        showSelectedLabels:
            true, // Set this to true to always show selected labels
        showUnselectedLabels:
            true, // Set this to true to always show unselected labels
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'lib/icons/receipt.png',
              width: 24,
              height: 24,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'lib/icons/squares (1).png',
              width: 24,
              height: 24,
            ),
            label: 'Products',
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                'lib/icons/tiles.png',
                width: 24,
                height: 24,
              ),
              label: 'Manage'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Account')
        ],
        onTap: (int index) {
          // Handle item tap here
          // You can use the index to determine which item was tapped
        },
      ),
    );
  }
}
