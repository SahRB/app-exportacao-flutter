import 'package:brazilian_treasures_app/main.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i =1; i<6; i++)
        Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Paleta.amarelo,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "-50%",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Paleta.vermelho,
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "itemPage");
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    "assets/images/$i.jpg",
                    height: 130,
                    width: 130,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Título",
                  style: TextStyle(
                    fontSize: 14,
                    color: Paleta.verdeEscuro,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Descrição do produto",
                  style: TextStyle(
                    fontSize: 13,
                    color: Paleta.verdeEscuro,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "R\$55",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Paleta.verdeEscuro,
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: Paleta.amarelo,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
