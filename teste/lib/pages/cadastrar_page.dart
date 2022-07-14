import 'package:flutter/material.dart';
import 'package:teste/domain/conteudo.dart';
import 'package:teste/pages/home_page.dart';

class CadastrarPage extends StatefulWidget {
  const CadastrarPage({Key? key}) : super(key: key);

  @override
  State<CadastrarPage> createState() => _CadastrarPageState();
}

class _CadastrarPageState extends State<CadastrarPage> {
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
                SizedBox(height: 40),
                Text(
                  "Criar conta",
                  style: TextStyle(
                    fontSize: 36,
                    color: const Color(0xFFA7AED3),
                    fontFamily: 'Staatliches',
                  ),
                ),
                SizedBox(height: 36),
                TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person_pin_rounded),
                      labelText: 'User',
                    ),
                ),
                SizedBox(height: 8),
                TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: 'Nome completo',
                    ),
                ),
                SizedBox(height: 8),
                TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.email_outlined),
                      labelText: 'Email',
                    ),
                ),
                SizedBox(height: 8),
                TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: 'Senha',
                    ),
                ),
                const SizedBox(height: 72),
                ElevatedButton(
                  onPressed: onPressedButton, 
                  child: const Text(
                    'Cadastrar',
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
          return const HomePage();
        },
      ),
    );
  }
}