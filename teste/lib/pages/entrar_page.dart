import 'package:flutter/material.dart';
import 'package:teste/domain/conteudo.dart';
import 'package:teste/pages/home_page.dart';

class EntrarPage extends StatefulWidget {
  const EntrarPage({Key? key}) : super(key: key);

  @override
  State<EntrarPage> createState() => _EntrarPageState();
}

class _EntrarPageState extends State<EntrarPage> {
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
      backgroundColor: const Color(0xFFDFE9F5),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 16),
                Image.network("https://static.thenounproject.com/png/448730-200.png"),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.account_box),
                    labelText: 'Usuário',
                  ),
                  ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: 'Senha',
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: onPressedButton,
                  child: const Text(
                    'Logar',
                     style: TextStyle(
                       fontSize: 26,
                       color: Colors.white,
                       fontFamily: 'AmaticSC-Regular',
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFA7AED3),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed:(){},
                  child: Text("Esqueceu a senha?",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ),
              ]
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