import 'package:asd32/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List categories = [
    {"iconname": Icons.laptop, "title": "Laptop"},
    {"iconname": Icons.phone_android_outlined, "title": "Phone"},
    {"iconname": Icons.pedal_bike_rounded, "title": "bike"},
    {"iconname": Icons.wallet_giftcard_sharp, "title": "Gifts"},
    {"iconname": Icons.directions_car_filled_outlined, "title": "car"},
  ];
  List items = [
    {
      "image": "images/a1 (1).png",
      "title": "Name of the product",
      "subtitle": "Product Description",
      "price": "463\$"
    },
    {
      "image": "images/a1 (2).png",
      "title": "Name of the product",
      "subtitle": "Product Description",
      "price": "650\$"
    },
    {
      "image": "images/a1 (3).png",
      "title": "Name of the product",
      "subtitle": "Product Description",
      "price": "234\$"
    },
    {
      "image": "images/a1 (4).png",
      "title": "Name of the product",
      "subtitle": "Product Description",
      "price": "546\$"
    },
    {
      "image": "images/a1 (5).png",
      "title": "Name of the product",
      "subtitle": "Product Description",
      "price": "546\$"
    },
    {
      "image": "images/a1 (6).png",
      "title": "Name of the product",
      "subtitle": "Product Description",
      "price": "546\$"
    },
    {
      "image": "images/a1 (7).png",
      "title": "Name of the product",
      "subtitle": "Product Description",
      "price": "546\$"
    },
    {
      "image": "images/a1 (8).png",
      "title": "Name of the product",
      "subtitle": "Product Description",
      "price": "546\$"
    },
  ];

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
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    border: InputBorder.none,
                    fillColor: Color.fromARGB(255, 239, 234, 234),
                    filled: true,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.menu,
                  size: 35,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          Container(
            height: 30,
          ),
          const Text(
            "Categories",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Container(height: 20),
          Container(
            height: 100,
            child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Container(
                    margin: const EdgeInsets.only(
                        right:
                            10), 
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(100)),
                          padding: const EdgeInsets.all(15),
                          child: Icon(
                            categories[i]["iconname"],
                            size: 40,
                          ),
                        ),
                        Text(
                          categories[i]["title"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700]),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: const Text(
              "Best selling",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          GridView.builder(
              itemCount: items.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 333),
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ItemsDetails(data: items[i])));
                  },
                  child: Card(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(22),
                            width: double.infinity,
                            color: const Color.fromARGB(255, 255, 254, 254),
                            child: Image.asset(items[i]["image"],
                                height: 177, fit: BoxFit.contain),
                          ),
                          Text(
                            items[i]["title"],
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            items[i]["subtitle"],
                            style: const TextStyle(
                                fontSize: 14, color: Colors.grey),
                          ),
                          Container(height: 10),
                          Text(
                            items[i]["price"],
                            style: const TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 224, 150, 3),
                                fontWeight: FontWeight.w800),
                          ),
                        ]),
                  ),
                );
              }),
        ]),
      ),
    );
  }
}
