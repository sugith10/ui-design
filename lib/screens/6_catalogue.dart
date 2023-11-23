import 'package:flutter/material.dart';

class Catalogue extends StatelessWidget {
  const Catalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text('Catalogue'),
            centerTitle: true,
            elevation: 0,
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
            bottom: TabBar(tabs: [
              Tab(
                text: 'Products',
              ),
              Tab(
                text: 'Categories',
              )
            ]),
          ),
          body: TabBarView(children: [FirstScreen(), SecondScreen()]),
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  List<Map<String, dynamic>> products = [
    {
      'images': 'assets/saree/11.webp',
      'title': 'Banarasi sari',
      'price': '₹799',
    },
    {
      'images': 'assets/saree/12.webp',
      'title': 'Kanchipuram silk sari',
      'price': '₹799',
    },
    {
      'images': 'assets/saree/13.webp',
      'title': 'Paithani',
      'price': '₹399',
    },
    {
      'images': 'assets/saree/14.jpg',
      'title': 'Chanderi sari',
      'price': '₹699',
    },
    {
      'images': 'assets/saree/15.jpg',
      'title': 'Baluchari sari',
      'price': '₹449',
    },
    {
      'images': 'assets/saree/16.webp',
      'title': 'Bandhani',
      'price': '₹599',
    },
    {
      'images': 'assets/saree/17.jpg',
      'title': 'Patola sari',
      'price': '₹1299',
    },
    {
      'images': 'assets/saree/18.jpg',
      'title': 'Pochampally saree',
      'price': '₹1199',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, position) {
            final product = products[position]; // Get the product data

            return Card(
              child: Column(
                children: [
                  IntrinsicHeight(
                    child: ListTile(
                      leading: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(product['images']),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      title: Text(
                        product['title'], // Use the title from the product data
                        style: TextStyle(fontSize: 17),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text('1 piece'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            product[
                                'price'], // Use the price from the product data
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'In stock',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.green),
                              ),
                              Spacer(),
                              Switch(
                                value:
                                    true, // Set the initial value of the switch
                                onChanged: (bool newValue) {
                                  // Handle the switch state change if needed (optional)
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                      trailing: Icon(Icons.more_vert_outlined),
                    ),
                  ),
                  Divider(
                    indent: 15,
                    endIndent: 15,
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.share_outlined),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Share Product',
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Second Screen')),
    );
  }
}
