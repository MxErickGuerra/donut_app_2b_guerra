import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieFlavor;
  final String smoothieStore;
  final String smoothiePrice;
  //dynamic será un tipo de color
  final dynamic smoothieColor;
  final String imageName;

  const SmoothieTile({super.key, required this.smoothieFlavor, required this.smoothieStore, required this.smoothiePrice, this.smoothieColor, required this.imageName, required Function() onAdd});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: smoothieColor[50], borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: <Widget> [
            //PriceTag
            Row(
              //Alinea a la derecha
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget> [
                Container(
                  decoration: BoxDecoration(
                    color: smoothieColor[200],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24))),
                  padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text('\$$smoothiePrice',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: smoothieColor[900])),
                )
              ]
            ),
            //Donut Picture
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 34),
              child: Image.asset(imageName),
            ),
            //Donut text
            Text(smoothieFlavor,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            //Para tener un espacio entre texto
            const SizedBox(
              height: 4,
            ),
            Text(
              smoothieStore,
              style: TextStyle(color: Colors.grey[600]),
            ),
            //Love icon + add button
            Padding(
              padding: const EdgeInsets.all(12.0),
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
                      fontSize: 16,
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