import 'package:donut_app_2b_guerra/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {

  //Lista de donas
  final Function(double) onAdd; // Recibe la función onAdd

  final List donutsOnSale = [
    //[donutFlavor, donutStore, donutPrice, donutColor, imageName]
    ["Ice Cream", "Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Dunkin donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Costco", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Walmart", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["katita","kitis y algo mas","100",Colors.pink, "lib/images/kat_donut.png"],
    ["kitilibum","kitis y algo mas","401",Colors.deepPurple,  "lib/images/kiti_donut.png"],
    ["dononon", "seth roguen","700",Colors.cyan, "lib/images/guap_donut.png"],
    ["allinone","cocina economica","95",Colors.orange, "lib/images/spagueti_donut.png"],
  ];

  DonutTab({super.key, required this.onAdd}); // Añade onAdd al constructor
  @override
  Widget build(BuildContext context) {
    //Como sale el widget acomodar elementos en cuadricula
    return GridView.builder(
          itemCount: donutsOnSale.length,
          padding: const EdgeInsets.all(8.0),
          //Prepa 1: Organiza como distribuir elementos en la cuadrícula
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //Número de columnas
            crossAxisCount: 2,
            //Relación de aspecto (proporción)
            childAspectRatio: 1/1.5),
          itemBuilder: (context, index) {
            return DonutTile(
              donutFlavor: donutsOnSale[index][0],
              donutStore: donutsOnSale[index][1],
              donutPrice: donutsOnSale[index][2],
              donutColor: donutsOnSale[index][3],
              imageName: donutsOnSale[index][4],
              onAdd: () => onAdd(double.parse(donutsOnSale[index][2])), // Pasa onAdd con el precio
            );
          });
  }
}
//Gridview: Acomodar en cuadricula
//itemCount: Parámetro que cuenta cuantos elementos hay
//GridView: Widget que acomoda los elementos en cuadrícula
//GridDelegate: Organiza como se distribuyen los elementos en la cuadrícula
//SliverGridDelegate: Permite crear listas y scrolls eficientes con efectos
//personalizados y optimizados
//CrossAxisCount: Parámetro que te da la cantidad exacta de columnas
//Eje principal: Es una columna vertical
//Eje cruzado: Es una columna horizontal