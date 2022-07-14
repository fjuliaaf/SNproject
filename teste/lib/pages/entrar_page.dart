import 'package:flutter/material.dart';
import 'package:teste/pages/cadastrar_page.dart';
import 'package:teste/pages/home_page.dart';
import 'package:teste/pages/recuperarSenha_page.dart';

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
      //backgroundColor: const Color(0xFFDFE9F5),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //const SizedBox(height: 16),
                Image.network("https://static.thenounproject.com/png/448730-200.png"),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.account_box),
                    labelText: 'Usuário',
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: 'Senha',
                  ),
                ),
                const SizedBox(height: 36),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: onPressedButton,
                      child: const Text(
                        'Logar',
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
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed:(){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) {
                              return const RecuperarSenhaPage();
                            },
                          ),
                        );
                      },
                      child: Text("Esqueceu a senha?",
                        style: TextStyle(
                          color: Color.fromARGB(186, 0, 0, 0),
                        ),
                      ),
                    ),
                  ]
                ),
                const SizedBox(height: 26),
                TextButton(
                  onPressed:(){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) {
                          return const CadastrarPage();
                        },
                      ),
                    );
                  },
                  child: Text("Não tem uma conta? Cadastre-se.",
                    style: TextStyle(
                      color: Color.fromARGB(197, 33, 22, 192),
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