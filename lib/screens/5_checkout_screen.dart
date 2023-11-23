import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order #1688068'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    'May 31, 05:42 PM',
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Icon(
                    IconData(0x1F535,
                        fontFamily:
                            'Emoji'), // Replace 'Emoji' with the actual font family
                    size: 15,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Deliverd',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 123, 123, 123))),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    '1 ITEM',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 123, 123, 123)),
                  ),
                  Spacer(),
                  Icon(Icons.receipt, color: Color(0xFF2196F3)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'RECEIPT',
                    style: TextStyle(color: Color(0xFF2196F3), fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(children: [
                Container(
                  width: 90,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/saree/images.jpg'), // Replace with your image path
                      fit: BoxFit.cover, // Adjust the fit as needed
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Explore | Men | Navy Blue',
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('1 piece'),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Size: XL',
                      style: TextStyle(),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue, // Outline color
                              width: 2.0, // Outline width
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text('  1  '),
                        ),
                        Text(' ×  ₹799'),
                      ],
                    )
                  ],
                ),
              ]),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Item Total',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '₹799',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Delivery',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Free',
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Grand Total',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '799',
                    style: TextStyle(fontSize: 19),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    'CUSTOMER DETAILS',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 123, 123, 123)),
                  ),
                  Spacer(),
                  Icon(
                    Icons
                        .share_outlined, // Replace 'Emoji' with the actual font family
                    size: 15,
                    color: Color(0xFF2196F3),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'SHARE',
                    style: TextStyle(color: Color(0xFF2196F3), fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deepa',
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '+91-7829000484',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 123, 123, 123)),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Address',
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'D 1101 Chartered Beverly',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 123, 123, 123)),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Hills ,Subramanyapura P.O',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 123, 123, 123)),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'City',
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Bangalore',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 123, 123, 123),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pincode',
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            '560061',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 123, 123, 123),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payment',
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Online',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 123, 123, 123)),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'ADDITIONAL INFORMATION',
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 123, 123, 123)),
              ),
              SizedBox(
                height: 20,
              ),
              Text('State',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text(
                'Karnataka',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Email',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text(
                'greeniceaqua@gmail.com',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Share receipt',
                    style: TextStyle(fontSize: 17),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF2196F3)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
