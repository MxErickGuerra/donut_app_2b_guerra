import 'package:donut_app_2b_guerra/utils/pancakes_tile.dart';
import 'package:flutter/material.dart';

class PanCakesTab extends StatelessWidget {

  //Lista de donas
  final Function(double) onAdd; // Recibe la función onAdd

  final List pancakesOnSale = [
    //[donutFlavor, donutStore, donutPrice, donutColor, imageName]
    ["FroggyMugged","Cantaritos","20",Colors.pinkAccent, "lib/images/frogg_pancake.png"],
    ["All clasic","Colom","120",Colors.blueGrey,  "lib/images/frutita_pancake.png"],
    ["Absolut", "Donde","15",Colors.pink, "lib/images/mieleros_pancake.png"],
    ["Piketito","Mixe","90",Colors.purple, "lib/images/morero_pancake.png"],
    ["Normales","Kukis","70",Colors.yellow, "lib/images/normales_pancake.png"],
    ["Roblox","Vans","37",Colors.blue,  "lib/images/roblo_pancake.png"],
    ["Rockk", "HXDERBEZ","10",Colors.brown, "lib/images/rock_pancake.png"],
    ["BunnyBun","lol","95",Colors.grey, "lib/images/bun_pancake.png"],
  ];

  PanCakesTab({super.key, required this.onAdd}); // Añade onAdd al constructor

  @override
  Widget build(BuildContext context) {
    //Como sale el widget acomodar elementos en cuadricula
    return GridView.builder(
          itemCount: pancakesOnSale.length,
          padding: const EdgeInsets.all(8.0),
          //Prepa 1: Organiza como distribuir elementos en la cuadrícula
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //Número de columnas
            crossAxisCount: 2,
            //Relación de aspecto (proporción)
            childAspectRatio: 1/1.5),
          itemBuilder: (context, index) {
            return PancakesTile(
              pancakesFlavor: pancakesOnSale[index][0],
              pancakesStore: pancakesOnSale[index][1],
              pancakesPrice: pancakesOnSale[index][2],
              pancakesColor: pancakesOnSale[index][3],
              imageName: pancakesOnSale[index][4],
              onAdd: () => onAdd(double.parse(pancakesOnSale[index][2])), // Pasa onAdd con el precio
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