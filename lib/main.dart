import 'package:brazilian_treasures_app/pages/cartPage.dart';
import 'package:brazilian_treasures_app/pages/home.dart';
import 'package:brazilian_treasures_app/pages/itemPage.dart';
import 'package:brazilian_treasures_app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/profile.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
          routes: {
              "/": (context) => Login(),
              "home":(context)=>Home(),
              "cartPage": (context) => CartPage(),
               "itemPage": (context)=> ItemPage(),
                "profile": (context)=> Profile(),
          },
    );
  }
}
class Paleta {
  static const preto=Color(0xFF040303);
  static const amarelo = Color(0xFFDC851F);
  static const  vermelho = Color(0xFF941B0C);
  static const verdeEscuro = Color(0xFF47682C);

}

