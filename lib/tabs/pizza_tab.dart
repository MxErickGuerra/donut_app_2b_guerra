import 'package:donut_app_2b_guerra/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {

  final Function(double) onAdd;

  //Lista de Pizzas
  final List pizzasOnSale = [ 
    //[doonutFlavor, pizzaStore, pizzaPrice, pizzaColor, imageName]
    ["Anchovies", "Pizza Hut", "36", Colors.red, "lib/images/anchoas_pizza.png"],
    ["Shrimp", "Messinas", "54", Colors.yellow,  "lib/images/camarones_pizza.png"],
    ["Mushroom", "Costco", "84", Colors.brown, "lib/images/champiñon_pizza.png"],
    ["Pepperoni", "Domino's", "95", Colors.purple, "lib/images/peperoni_pizza.png"],
    ["Peppers", "Pizza y corre", "36", Colors.green, "lib/images/pimiento_pizza.png"],
    ["Salami", "Sanetis", "84", Colors.brown, "lib/images/salami_pizza.png"],
    ["Pineapple", "Superpizza", "54", Colors.yellow,  "lib/images/piña_pizza.png"],
    ["Sausage", "Baleros", "95", Colors.red, "lib/images/salchicha_pizza.png"],
   ];

   PizzaTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    //Como sale el widget acomodar elementos en cuadricula
    return GridView.builder(
          itemCount: pizzasOnSale.length,
          padding: const EdgeInsets.all(8.0),
          //Prepa 1: Organiza como distribuir elementos en la cuadrícula
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //Número de columnas
            crossAxisCount: 2,
            //Relación de aspecto (proporción)
            childAspectRatio: 1/1.5),
          itemBuilder: (context, index) {
            return PizzaTile(
              pizzaFlavor: pizzasOnSale[index][0],
              pizzaStore: pizzasOnSale[index][1],
              pizzaPrice: pizzasOnSale[index][2],
              pizzaColor: pizzasOnSale[index][3],
              imageName: pizzasOnSale[index][4],
              onAdd: () => onAdd(double.parse(pizzasOnSale[index][2])),
            );
          });
  }
}