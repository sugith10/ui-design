import 'package:flutter/material.dart';

class DukaanScreen extends StatefulWidget {
  DukaanScreen({super.key});

  @override
  State<DukaanScreen> createState() => _DukaanScreenState();
}

class _DukaanScreenState extends State<DukaanScreen> {
  List<String> items = [
    "What types of businesses can use Dukaan Premium?",
    "What is your refund policy?",
    "Will there be an automatic charge after the paid trial?",
    "What payment methods do you offer?",
  ];
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dukaan Premium'),
        centerTitle: true,
        backgroundColor: Color(0xFF136DB4),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: 90,
                    decoration: BoxDecoration(color: Color(0xFF136DB4)),
                  ),
                  Positioned(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.only(start: 20, end: 20),
                      child: Container(
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8.0), // Adjust the border radius as needed
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                8.0), // Match the border radius to the Card
                            child: Image.asset(
                              'lib/icons/w1.jpeg', // Replace with the path to your image asset
                              fit: BoxFit
                                  .fill, // Ensure the image covers the entire Card
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
              child: Container(
                child:  Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Features',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          child: CircleAvatar(
                            child: Icon(
                              Icons.business,
                              color: Color(0xFF136DB4),
                            ),
                            backgroundColor: Colors.white,
                            
                          ),
                          
                          decoration: BoxDecoration(border: Border.all(color: Color(0xFF136DB4)),borderRadius: BorderRadius.circular(100)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Custom domain name',
                                style: TextStyle(fontSize: 17)),
                            Text(
                              'Get your own custom domain and build your brand \non the internet.',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 123, 123, 123)),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                         Container(
                          child: CircleAvatar(
                            child: Icon(
                              Icons.verified,
                              color: Color(0xFF136DB4),
                            ),
                            backgroundColor: Colors.white,
                            
                          ),
                          
                          decoration: BoxDecoration(border: Border.all(color: Color(0xFF136DB4)),borderRadius: BorderRadius.circular(100)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Verified seller badge',
                                style: TextStyle(fontSize: 17)),
                            Text(
                              'Get green verified badge under \nyour store name and build trust.',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 123, 123, 123)),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                         Container(
                          child: CircleAvatar(
                            child: Icon(
                              Icons.computer,
                              color: Color(0xFF136DB4),
                            ),
                            backgroundColor: Colors.white,
                            
                          ),
                          
                          decoration: BoxDecoration(border: Border.all(color: Color(0xFF136DB4)),borderRadius: BorderRadius.circular(100)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dukaan for PC',
                                style: TextStyle(fontSize: 17)),
                            Text(
                              'Access all the exclusive premium \nfeatures on Dukaan for PC.',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 123, 123, 123)),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          child: CircleAvatar(
                            child: Icon(
                              Icons.person_2_outlined,
                              color: Color(0xFF136DB4),
                            ),
                            backgroundColor: Colors.white,
                            
                          ),
                          
                          decoration: BoxDecoration(border: Border.all(color: Color(0xFF136DB4)),borderRadius: BorderRadius.circular(100)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Priority support',
                                style: TextStyle(fontSize: 17)),
                            Text(
                              'Get your questions resolved with our \npriority customer support.',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 123, 123, 123)),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('What is Dukaan Premium?',
                            style: TextStyle(fontSize: 17)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 150,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8.0), // Adjust the border radius as needed
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              8.0), // Match the border radius to the Card
                          child: Image.asset(
                            'lib/icons/w2.png', // Replace with the path to your image asset
                            fit: BoxFit
                                .fill, // Ensure the image covers the entire Card
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Frequently asked questions',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Container(
                    child: ExpansionPanelList(
                      elevation: 0,
                      children: [
                        ExpansionPanel(
                          headerBuilder: (context, isExpanded) {
                            return const ListTile(
                              title: Text(
                                  'What types of businesses can use Dukaan Premium'),
                            );
                          },
                          body: const ListTile(
                            title: Text(
                              'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand-anyone who wants to sell their products/services online-Dukaan is the perfect platform for you.',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          isExpanded: true,
                        ),
                        ExpansionPanel(
                          headerBuilder: (context, isExpanded) {
                            return const ListTile(
                              title: Text('What is your refund policy?'),
                            );
                          },
                          body: const ListTile(
                            title: Text(
                              'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand-anyone who wants to sell their products/services online-Dukaan is the perfect platform for you.',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          isExpanded: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Need help? Get in touch',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 150,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Icon(Icons.chat_bubble_outline,
                                        color: Colors.black),
                                    Text(
                                      'Live Chat',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          width: 150,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Icon(Icons.call, color: Colors.black),
                                    Text(
                                      'Phone Call',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ), //jhgjhgggggggggggggggggggggggggggggggj
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Select Domain',
                  style: TextStyle(fontSize: 17),
                )),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Get Premium',
                style: TextStyle(fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                minimumSize: Size(150, 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Item {
  Item({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });
  String headerText;
  String expandedText;
  bool isExpanded;
}
