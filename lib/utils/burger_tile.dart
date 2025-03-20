import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerFlavor;
  final String burgerStore;
  final String burgerPrice;
  //dynamic será un tipo de color
  final dynamic burgerColor;
  final String imageName;

  const BurgerTile({super.key, required this.burgerFlavor, required this.burgerStore, required this.burgerPrice, this.burgerColor, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: burgerColor[50], borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: <Widget> [
            //PriceTag
            Row(
              //Alinea a la derecha
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget> [
                Container(
                  decoration: BoxDecoration(
                    color: burgerColor[200],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24))),
                  padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text('\$$burgerPrice',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: burgerColor[800])),
                )
              ]
            ),
            //Donut Picture
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 34),
              child: Image.asset(imageName),
            ),
            //Donut text
            Text(burgerFlavor,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            //Para tener un espacio entre texto
            const SizedBox(
              height: 4,
            ),
            Text(
              burgerStore,
              style: TextStyle(color: Colors.grey[600]),
            ),
            //Love icon + add button
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.pink[400],
                  ),
                  const Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}