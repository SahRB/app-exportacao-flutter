import 'package:brazilian_treasures_app/main.dart';
import 'package:brazilian_treasures_app/widgets/profileAppBar.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0), // Ajuste conforme necessário
        child: ProfileAppBar(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(3),
        child: Column(
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image(
                  image: AssetImage("../assets/images/avatar.jpg"),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Nome",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Artesão - Brasileiro - Português "),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Editar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Paleta.verdeEscuro,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Divider(),
            SizedBox(height: 10),
            ProfileMenu(
              icon: LineIcons.cog,
              text: "Configurações",
            ),
            SizedBox(height: 10),
            ProfileMenu(
              icon: LineIcons.user,
              text: "Dados Pessoais",
            ),
            SizedBox(height: 10),
            ProfileMenu(
              icon: LineIcons.bell,
              text: "Notificações",
            ),
            SizedBox(height: 10),
            ProfileMenu(
              icon: LineIcons.alternateList,
              text: "Gerenciar vendas",
            ),
            SizedBox(height: 10),
            ProfileMenu(
              icon: Icons.add,
              text: "Adicionar produto",
            ),
            SizedBox(height: 10),
            ProfileMenu(
              icon: LineIcons.globe,
              text: "Requisitar agencia de comercio exterior",
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  final IconData icon;
  final String text;

  const ProfileMenu({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Paleta.amarelo.withOpacity(0.1),
        ),
        child: Icon(
          icon,
          color: Paleta.verdeEscuro,
          size: 18,
        ),
      ),
      title: Text(text),
      trailing: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Paleta.amarelo.withOpacity(0.1),
        ),
        child: Icon(
          LineIcons.angleRight,
          size: 18,
          color: Paleta.amarelo,
        ),
      ),
    );
  }
}
