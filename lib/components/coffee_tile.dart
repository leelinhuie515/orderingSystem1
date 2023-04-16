import 'package:flutter/material.dart';
import 'package:orderingsystem/model/coffee.dart';


class CoffeeTitle extends StatelessWidget {
  final Coffee coffee;
  void Function()? onPressed;
  CoffeeTitle({super.key, required this.coffee, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 30,horizontal: 10),
      child: ListTile(
        title:Text(
          coffee.name,
          style: TextStyle(fontSize: 20),
        ),
        subtitle: Text(
          coffee.price,
          style: TextStyle(fontSize: 15),
        ),
        leading: Image.asset(coffee.imagePath),

      ),

    );
  }
}
