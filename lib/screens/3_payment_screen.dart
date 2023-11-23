import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List<String> payment = ['Life Time', 'Bank Account'];
  String selectedPayment = 'Life Time'; // Default selected payment

  List<Map<String, dynamic>> products = [
    {
      'images': 'assets/saree/11.webp',
      'title': 'Order #1688068',
      'price': '₹799',
      'date': 'Jul 12, 02:08 PM'
    },
    {
      'images': 'assets/saree/12.webp',
      'title': 'Order #1457741',
      'price': '₹799',
      'date': 'Apr 26, 07:47 AM'
    },
    {
      'images': 'assets/saree/13.webp',
      'title': 'Order #1685889',
      'price': '₹399',
      'date': 'Apr 11, 10:54 AM'
    },
    {
      'images': 'assets/saree/14.jpg',
      'title': 'Order #4674389',
      'price': '₹699',
      'date': 'Apr 2, 11:29 AM'
    },
    {
      'images': 'assets/saree/15.jpg',
      'title': 'Order #1688788',
      'price': '₹449',
      'date': 'Apr 26, 10:37 AM'
    },
    {
      'images': 'assets/saree/16.webp',
      'title': 'Order #93747267',
      'price': '₹599',
      'date': 'Apr 26, 01:26 PM'
    },
    {
      'images': 'assets/saree/17.jpg',
      'title': 'Order #942726211',
      'price': '₹1299',
      'date': 'Apr 26, 09:54 AM'
    },
    {
      'images': 'assets/saree/18.jpg',
      'title': 'Order #974372889',
      'price': '₹1199',
      'date': 'Apr 26, 12:47 PM'
    },
  ];

  void onChanged(String? newValue) {
    if (newValue != null) {
      setState(() {
        selectedPayment = newValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Payments')),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.error_outline))
        ],
        elevation: 0,
      ),
      body: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: EdgeInsets.all(18),
              shadowColor: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Transaction Limit',
                      style: TextStyle(fontSize: 19),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'A free limit up to which you will receive \nthe online payments directly in your bank',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 123, 123, 123),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LinearProgressIndicator(
                            value: 0.35, backgroundColor: Colors.grey),
                        const SizedBox(height: 8),
                        Text(
                          '36,668 left out of ₹50,000', // Replace with your progress text
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 123, 123, 123)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Increase limit"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 40),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                Text(
                  'Default Method',
                  style: TextStyle(fontSize: 17),
                ),
                Spacer(),
                Text(
                  'Online Payments >',
                  style: TextStyle(
                      fontSize: 17, color: Color.fromARGB(255, 123, 123, 123)),
                ),
                SizedBox(
                  width: 18,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                Text(
                  'Payment Profile',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Spacer(),
                Text(
                  'Bank Account >',
                  style: TextStyle(
                      fontSize: 17, color: Color.fromARGB(255, 123, 123, 123)),
                ),
                SizedBox(
                  width: 18,
                )
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            const Divider(
              indent: 16,
              endIndent: 16,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 18,
                ),
                const Text(
                  'Payments Overview',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
                DropdownButton<String>(
                  value: selectedPayment,
                  onChanged: onChanged,
                  items: payment.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  style: const TextStyle(
                      fontSize: 17, color: Color.fromARGB(255, 123, 123, 123)),
                ),
                const SizedBox(
                  width: 18,
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 18,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'AMOUNT ON HOLD',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '₹0',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 47, 195, 2),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'AMOUNT RECEIVED',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '₹13,332',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Transactions',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'On hold',
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minimumSize: Size(90, 30),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Payouts (15)',
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 58, 140, 255),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minimumSize: Size(130, 30),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Refunds',
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minimumSize: Size(100, 30),
                  ),
                ),
                SizedBox(
                  width: 18,
                )
              ],
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, position) {
                    final product = products[position];

                    return ListTile(
                      leading: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(product['images']),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      title: Text(product['title']),
                      subtitle: Text(
                          product['date']), //huhufufhsdfhkjgfdshvbdfhdfbhsdbds
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            product['price'],
                            style: TextStyle(
                                color: Color.fromARGB(255, 58, 140, 255)),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text('Successful')
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, position) {
                    return Divider();
                  },
                  itemCount: products.length),
            )
          ],
        ),
      ),
    );
  }
}
