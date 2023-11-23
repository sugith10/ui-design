import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final ValueNotifier<bool> isSwitchedNotifier = ValueNotifier<bool>(false);

  final List<Map<String, dynamic>> items = [
    {
      'title': 'Share Dukaan App',
      'icon': Icons.share_outlined,
      'trailingIcon': Icons.keyboard_arrow_right,
    },
    {
      'title': 'Change Language',
      'icon': Icons.chat_bubble,
      'trailingIcon': Icons.keyboard_arrow_right,
    },
    {
      'title': 'WhatsApp Chat Support',
      'icon': Icons.chat_rounded,
      'isSwitch': true, // Add this flag to identify Switch item
    },
    {
      'title': 'Privacy Policy',
      'icon': Icons.lock_outline,
    },
    {
      'title': 'Rate Us',
      'icon': Icons.star_outline,
    },
    {
      'title': 'Sign Out',
      'icon': Icons.exit_to_app,
    }
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgets = items.map((item) {
      if (item['isSwitch'] == true) {
        return ListTile(
          title: Text(
            item['title'],
            style: TextStyle(color: Color.fromARGB(255, 61, 61, 61)),
          ),
          leading: Icon(item['icon'], color: Color.fromARGB(255, 61, 61, 61)),
          trailing: ValueListenableBuilder<bool>(
            valueListenable: isSwitchedNotifier,
            builder: (BuildContext context, bool value, Widget? child) {
              return Switch(
                value: value,
                onChanged: (_) {
                  // Toggle the switch for showoff purposes.
                  isSwitchedNotifier.value = !isSwitchedNotifier.value;
                },
              );
            },
          ),
        );
      } else {
        return ListTile(
          title: Text(
            item['title'],
            style: TextStyle(color: Color.fromARGB(255, 61, 61, 61)),
          ),
          leading: Icon(item['icon'], color: Color.fromARGB(255, 61, 61, 61)),
          trailing: Icon(item['trailingIcon']),
        );
      }
    }).toList();

    final versionText = Text(
      'Version',
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.grey,
      ),
    );
    final versionNum = Text(
      ' 2.4.2',
      style: TextStyle(
        fontSize: 18.0,
        color: Colors.grey,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Additional Information',
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(children: widgets),
          ),
          versionText,
          SizedBox(
            height: 5,
          ),
          versionNum,
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
