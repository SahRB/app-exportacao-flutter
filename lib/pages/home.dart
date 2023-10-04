import 'package:brazilian_treasures_app/main.dart';
import 'package:brazilian_treasures_app/widgets/CategoriesWidget.dart';
import 'package:brazilian_treasures_app/widgets/homeAppBar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


import '../widgets/itemsWidget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView (
        children: [
          HomeAppBar(),
          Container(
            // height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEAECE8),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),

            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal:15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Pesquise aqui",
                            hintStyle: TextStyle(color: Paleta.amarelo)

                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.camera_alt, size:27 , color: Paleta.verdeEscuro),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical:20, horizontal: 10 ),
                  child: Text("Categorias", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:  Colors.black87,),
                ),
                ),

                CategoriesWidget(),

                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal:10 ),
                  child: Text("Melhor escolha", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,


                  ),
                  ),

                ),
                ItemsWidget(),
              ],
            ),

          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index){},
        height: 70,
        color: Paleta.verdeEscuro,
        items: [Icon(Icons.home, size: 30, color:Colors.white),
      Icon(Icons.shopping_cart, size: 30, color: Colors.white),
          Icon(Icons.favorite, size: 30, color: Colors.white),
        ],
      ),
    );
  }
}
