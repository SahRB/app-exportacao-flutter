import 'package:brazilian_treasures_app/main.dart';
import 'package:brazilian_treasures_app/pages/cadUser.dart';
import 'package:brazilian_treasures_app/pages/home.dart';
import 'package:flutter/material.dart';

class AuthServiceMock {
  Future<bool> login(String email, String password) async {
    // Simula uma lógica fictícia de autenticação
    await Future.delayed(Duration(seconds: 2));

    // Verifica se o email e a senha correspondem aos valores "mockados"
    return email == 'email@gmail.com' && password == '123';
  }
}

class Login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "../assets/images/login.png",
              height: 320,
              width: 350,
              fit: BoxFit.cover,
            ),
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Paleta.verdeEscuro,
              ),
            ),
            const SizedBox(height: 15),
            // Campo de email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F8F9),
                  border: Border.all(
                    color: const Color(0xFFE8ECF4),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Color(0xFF8391A1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            // Campo de senha
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F8F9),
                  border: Border.all(
                    color: const Color(0xFFE8ECF4),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Senha',
                      hintStyle: TextStyle(
                        color: Color(0xFF8391A1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
            ),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Esqueceu a senha?",
                  style: TextStyle(
                    color: Paleta.vermelho,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            // Botão de login
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      color: Paleta.verdeEscuro,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      onPressed: () async {
                        bool isAuthenticated = await AuthServiceMock().login(
                          emailController.text,
                          passwordController.text,
                        );

                        if (isAuthenticated) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        } else {
                          // Exibe uma mensagem de erro caso a autenticação falhe
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Login falhou. Verifique suas credenciais.'),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // ... (outros widgets)
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Não tem uma conta? ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CadUser()),
                    );
                  },
                  child: const Text(
                    "Registre-se",
                    style: TextStyle(
                      color: Paleta.verdeEscuro,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
