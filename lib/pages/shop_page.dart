import 'package:ecommerce_app/components/shoe_tile.dart';
import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const new({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final List<Shoe> _shoes = [
    Shoe(
      name: "Shoe One",
      price: "240",
      imagePath: "lib/images/shoe1.jpg",
      description: "cool shoe",
    ),
    Shoe(
      name: "Shoe Two",
      price: "267",
      imagePath: "lib/images/shoe2.jpg",
      description: "cool shoe",
    ),
    Shoe(
      name: "Shoe Three",
      price: "314",
      imagePath: "lib/images/shoe3.jpg",
      description: "cool shoe",
    ),
    Shoe(
      name: "Shoe Four",
      price: "180",
      imagePath: "lib/images/shoe4.jpg",
      description: "cool shoe",
    ),
    Shoe(
      name: "Shoe Five",
      price: "198",
      imagePath: "lib/images/shoe5.jpg",
      description: "cool shoe",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12.0),
          margin: EdgeInsets.symmetric(horizontal: 25.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Search", style: TextStyle(color: Colors.grey)),
              Icon(Icons.search, color: Colors.grey),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text(
            "everyone flies... some fly longer than others",
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot picks",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                "See all",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: _shoes.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ShoeTile(shoe: _shoes[index]),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
          child: Divider(color: Colors.white),
        ),
      ],
    );
  }
}
