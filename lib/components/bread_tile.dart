import 'package:flutter/material.dart';
import 'package:orderingsystem/model/bread.dart';

class BreadTile extends StatelessWidget {
  final Bread bread;
  const BreadTile({super.key, required this.bread});

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
        title: Text(
          bread.name,
          style: TextStyle(fontSize: 20),
        ),
        subtitle: Text(
          bread.price,
          style: TextStyle(fontSize: 15),
        ),
        leading: Image.asset(bread.imagepath),
      ),
    );
  }
}

