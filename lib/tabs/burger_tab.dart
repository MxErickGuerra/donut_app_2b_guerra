import 'package:donut_app_2b_guerra/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {

  //Lista de donas
  final List burgersOnSale = [
    //[donutFlavor, donutStore, donutPrice, donutColor, imageName]
    ["Ice Cream", "Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Dunkin donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Costco", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Walmart", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Ice Cream", "Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Dunkin donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Costco", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Walmart", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  ];

   BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    //Como sale el widget acomodar elementos en cuadricula
    return GridView.builder(
          itemCount: burgersOnSale.length,
          padding: const EdgeInsets.all(8.0),
          //Prepa 1: Organiza como distribuir elementos en la cuadrícula
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //Número de columnas
            crossAxisCount: 2,
            //Relación de aspecto (proporción)
            childAspectRatio: 1/1.5),
          itemBuilder: (context, index) {
            return BurgerTile(
              burgerFlavor: burgersOnSale[index][0],
              burgerStore: burgersOnSale[index][1],
              burgerPrice: burgersOnSale[index][2],
              burgerColor: burgersOnSale[index][3],
              imageName: burgersOnSale[index][4],
            );
          });
  }
}