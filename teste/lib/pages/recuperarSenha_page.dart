import 'package:flutter/material.dart';
import 'package:teste/pages/entrar_page.dart';

class RecuperarSenhaPage extends StatefulWidget {
  const RecuperarSenhaPage({Key? key}) : super(key: key);

  @override
  State<RecuperarSenhaPage> createState() => _RecuperarSenhaPageState();
}

class _RecuperarSenhaPageState extends State<RecuperarSenhaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xFFA7AED3),
        title: const Text(
          'Science Notes',
          style: TextStyle(fontSize: 24, color: Colors.white, fontFamily: 'Staatliches'),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Esqueceu a senha?',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFFA7AED3),
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  'Para recuperar seu acesso, preencha\n' 'o campo com o e-mail cadastrado\n' 'em sua conta e a sua nova senha.',
                  style: TextStyle(color: Colors.black38,
                  fontSize: 20),
                ),
                SizedBox(height: 42),
                TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      labelText: 'E-mail',
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: 'Senha',
                  ),
                ),
                SizedBox(height: 76),
                ElevatedButton(
                  onPressed: onPressedButton, 
                  child: const Text(
                    'Recuperar acesso',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontFamily: 'AmaticSC-Regular',
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFA7AED3),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void onPressedButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const EntrarPage();
        },
      ),
    );
  }
}