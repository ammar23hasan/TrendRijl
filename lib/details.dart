import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemsDetails extends StatefulWidget {
  final data;
  const ItemsDetails({super.key, this.data});

  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.orange,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "*"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: "*"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "*"),
        ],
      ),
      endDrawer: const Drawer(),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shop_outlined,
              color: Colors.orange,
            ),
            Text(
              " Ecommerce",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              " Ömer",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        backgroundColor: Colors.grey[200],
      ),
      body: ListView(
        children: [
          Image.asset(widget.data["image"]),
          Container(
              child: Text(
            widget.data["title"],
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          )),
          Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                widget.data["subtitle"],
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              )),
          Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                widget.data["price"],
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Color : "),
              SizedBox(width: 10),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.orange)),
              ),
              Text("  Grey"),
              SizedBox(width: 15),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 191, 55, 6),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              Text("  Red"),
              SizedBox(width: 15),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 236, 145, 41),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              Text("  Orange"),
              SizedBox(width: 15),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 74, 77, 218),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              Text("  Blue"),
              Container(
                margin: const EdgeInsets.only(top: 33),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Size :  ",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "42 ",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                "   41   40   39   38 ",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 70, vertical: 25),
            child: MaterialButton(
              padding: EdgeInsets.symmetric(vertical: 15),
              color: Colors.black,
              textColor: Colors.white,
              onPressed: () {},
              child: Text("Add To Cart"),
            ),
          ),
        ],
      ),
    );
  }
}
