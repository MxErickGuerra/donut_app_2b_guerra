import 'package:donut_app_2b_guerra/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  final Function(double) onAdd; // Recibe la función onAdd

  //Lista de donas
  final List burgersOnSale = [
    //[donutFlavor, donutStore, donutPrice, donutColor, imageName]
    ["The Classic", "Burger's", "36", Colors.blue, "lib/images/classic_burger.png"],
    ["The Special", "Burger's", "45", Colors.red, "lib/images/special_burger.png"],
    ["Double Flavor", "Burger's", "84", Colors.purple, "lib/images/doublefLavor_Burger.png"],
    ["The Gourmet", "Burger's", "95", Colors.brown, "lib/images/gourmet_burger.png"],
    ["Supreme Delight", "Burger's", "36", Colors.blue, "lib/images/supreme_burger.png"],
    ["Roger Classic", "Burger's", "45", Colors.red, "lib/images/roger_burger.png"],
    ["Alan Classic", "Burger's", "84", Colors.purple, "lib/images/alan_burger.png"],
    ["Chilli Spicy", "Burger's", "75", Colors.brown, "lib/images/spicy_burger.png"],
  ];

  BurgerTab({super.key, required this.onAdd}); // Añade onAdd al constructor

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
              onAdd: () => onAdd(double.parse(burgersOnSale[index][2])), // Pasa onAdd con el precio
            );
          });
  }
}