 import 'package:flutter/material.dart';
import 'package:orderingsystem/components/tea_tile.dart';
import 'package:orderingsystem/model/tea_shop.dart';
import 'package:provider/provider.dart';

import '../model/tea.dart';

class teaPage extends StatefulWidget {
  const teaPage({Key? key}) : super(key: key);

  @override
  State<teaPage> createState() => _teaPageState();
}

class _teaPageState extends State<teaPage> {

  //add tea to cart
  void addToCart(Tea tea) {
    Provider.of<TeaShop>(context, listen: false).addItemToCart(tea);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TeaShop>(
      builder: (context,value,child)=>SafeArea(
       child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(
              "Tea",
              style: TextStyle(
                fontSize: 45,
                fontFamily: 'Modern Love',
              ),
            ),
            const SizedBox(height: 25),

            Expanded(
              child: ListView.builder(
                  itemCount: value.teaShop.length,
                  itemBuilder: (context, index){
                    //get individual tea
                    Tea eachTea = value.teaShop[index];
                    //return the tile for this tea
                    return Teatile(
                        tea: eachTea,
                      onPressed: () => addToCart(eachTea),
                    );
                  }),
            ),
          ],

        ),
      ),
      ),
    );

  }
}
