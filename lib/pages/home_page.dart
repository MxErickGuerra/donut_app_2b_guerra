import 'package:donut_app_2b_guerra/tabs/burger_tab.dart';
import 'package:donut_app_2b_guerra/tabs/donut_tab.dart';
import 'package:donut_app_2b_guerra/tabs/pancakes_tab.dart';
import 'package:donut_app_2b_guerra/tabs/pizza_tab.dart';
import 'package:donut_app_2b_guerra/tabs/smoothie_tab.dart';
import 'package:donut_app_2b_guerra/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemCount = 0; // Cantidad de ítems
   double totalPrice = 0.0; // Precio total
 
   // Función para agregar un ítem
   void addItem(double price) {
     setState(() {
       itemCount++;
       totalPrice += price;
     });
   }
  //Lista de tabs
  List<Widget> myTabs = [
    //DonutTab
    MyTab(iconPath: 'lib/icons/donut.png',),
    //BurgerTab
    MyTab(iconPath: 'lib/icons/burger.png',),
    //SmoothieTab
    MyTab(iconPath: 'lib/icons/smoothie.png',),
    //PancakesTab
    MyTab(iconPath: 'lib/icons/pancakes.png',),
    //PizzaTab
    MyTab(iconPath: 'lib/icons/pizza.png',),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          //Icono izquierdo
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
            ),
          //Icono derecho
          actions: [Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(Icons.person),
          )]
        ),
        body: Column(
          children: [
            //Texto principal
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text("I want to ", style: TextStyle(fontSize: 32)),
                  Text("Eat",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      //Tamaño
                      fontSize: 32,
                      //Negritas
                      fontWeight: FontWeight.bold,
                      //Subrayado
                      decoration: TextDecoration.underline))
                ],
              ),
            ),
            //TabBar (Barra de pestañas)
            TabBar(tabs: myTabs),
            //TabBarView (Contenido de pestañas)
            Expanded(
              child: TabBarView(children: [
              DonutTab(onAdd: addItem),
              BurgerTab(onAdd: addItem),
              SmoothieTab(onAdd: addItem),
              PanCakesTab(onAdd: addItem),
              PizzaTab(onAdd: addItem)
              ]),
            ),
            
            //Carrito
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Row(
                //Poner los elementos en los extremos de la fila
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Column(
                      //Alinearlo a la izquierda
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('$itemCount Item | \$${totalPrice.toStringAsFixed(2)}',
                          style: TextStyle(fontSize: 18,
                          //Negritas
                          fontWeight: FontWeight.bold),
                        ),
                        Text("Delivery Charges Included",
                        style: TextStyle(fontSize: 12),
                        ),
                      ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12)),
                      child: const Text('View Cart',
                        style: TextStyle(color: Colors.white)),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}