// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecomerce/components/shoe_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/cart.dart';
import '../model/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Successfully added'),
        content: Text('Check out the cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: ((context, value, child) => Column(
            children: [
              //search bar
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Search',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              //message bar
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: Text(
                  'Everyone files .. some fly longer thatn others',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
              //hot picker

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hot Picks',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue[600]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: 23,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    // Shoe shoe = Shoe(
                    //   name: 'air jordan',
                    //   price: '324',
                    //   description: 'cool shoe',
                    //   imagePath: 'lib/products/1.jpg',
                    // );
                    Shoe shoe = value.getShoeList()[index];
                    return ShoeTile(
                      shoe: shoe,
                      onTap:() =>  addShoeToCart(shoe),
                    );
                  },
                ),
              ),
              const Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
                child: Divider(
                  color: Colors.white,
                ),
              ),
            ],
          )),
    );
  }
}
