import 'package:donut_app_2b_guerra/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {

  final Function(double) onAdd;

  //Lista de donas
  final List smoothiesOnSale = [
    //[donutFlavor, donutStore, donutPrice, donutColor, imageName]
    ["Cherry", "Starbucks", "36", Colors.red, "lib/images/cereza_smoothie.png"],
    ["Coconut", "Bombuté", "54", Colors.brown,  "lib/images/coco_smoothie.png"],
    ["Lemon", "Bova Tea", "84", Colors.green, "lib/images/limon_smoothie.png"],
    ["Apple", "TaBoo", "95", Colors.red, "lib/images/manzana_smoothie.png"],
    ["Melon", "POP Tea", "36", Colors.pink, "lib/images/melon_smoothie.png"],
    ["Orange", "Gong Cha", "54", Colors.orange,  "lib/images/naranja_smoothie.png"],
    ["Banana", "Tapioca Flavors", "84", Colors.yellow, "lib/images/platano_smoothie.png"],
    ["Eggplant", "Bubbaplop", "95", Colors.purple, "lib/images/berenjena_smoothie.png"],

  ];

   SmoothieTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    //Como sale el widget acomodar elementos en cuadricula
    return GridView.builder(
          itemCount: smoothiesOnSale.length,
          padding: const EdgeInsets.all(8.0),
          //Prepa 1: Organiza como distribuir elementos en la cuadrícula
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //Número de columnas
            crossAxisCount: 2,
            //Relación de aspecto (proporción)
            childAspectRatio: 1/1.5),
          itemBuilder: (context, index) {
            return SmoothieTile(
              smoothieFlavor: smoothiesOnSale[index][0],
              smoothieStore: smoothiesOnSale[index][1],
              smoothiePrice: smoothiesOnSale[index][2],
              smoothieColor: smoothiesOnSale[index][3],
              imageName: smoothiesOnSale[index][4],
              onAdd: () => onAdd(double.parse(smoothiesOnSale[index][2])),
            );
          });
  }
}