import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridViewScreen extends StatelessWidget {
  List<Item> items = [
    Item(color: Colors.green, icon: Icons.home, name: "Home"),
    Item(color: Colors.blue, icon: Icons.error, name: "Error"),
    Item(color: Colors.red, icon: Icons.map, name: "Map"),
    Item(color: Colors.grey, icon: Icons.settings, name: "Setting"),
    Item(color: Colors.purple, icon: Icons.hotel, name: "Hotel"),
    Item(color: Colors.orange, icon: Icons.traffic, name: "Traffic"),
    Item(color: Colors.yellow, icon: Icons.image, name: "Image"),
    Item(color: Colors.pink, icon: Icons.phone, name: "Phone"),
    Item(color: Colors.black, icon: Icons.message, name: "Messages"),
    Item(color: Colors.lightBlue, icon: Icons.play_arrow, name: "Play"),
    Item(color: Colors.lightGreen, icon: Icons.usb, name: "USB"),
    Item(
        color: Colors.lightGreenAccent, icon: Icons.facebook, name: "Facebook"),
    Item(color: Colors.blueGrey, icon: Icons.lock_clock, name: "Lock Clock"),
    Item(color: Colors.blueAccent, icon: Icons.contact_mail, name: "Contact"),
    Item(color: Colors.redAccent, icon: Icons.calculate, name: "Calculator"),
    Item(color: Colors.grey, icon: Icons.radio, name: "Radio"),
    Item(color: Colors.purpleAccent, icon: Icons.date_range, name: "Calendar"),
    Item(color: Colors.orangeAccent, icon: Icons.note, name: "Note"),
    Item(color: Colors.yellowAccent, icon: Icons.chat, name: "SMS"),
    Item(color: Colors.pinkAccent, icon: Icons.search, name: "Search"),
    Item(color: Colors.green, icon: Icons.voice_chat, name: "Voice"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu")),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: items[index].color),
                    padding: EdgeInsets.all(8),
                    // color: Colors.purple,
                    child: Icon(
                      items[index].icon,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(items[index].name),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Item {
  String name;
  IconData icon;
  Color color;
  Item({required this.color, required this.icon, required this.name});
}
