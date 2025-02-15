import 'package:flutter/material.dart';

class Autenticacaotela extends StatefulWidget {
  const Autenticacaotela({super.key});

  @override
  _AutenticacaotelaState createState() => _AutenticacaotelaState();
}

class _AutenticacaotelaState extends State<Autenticacaotela> {
  bool queroEntrar = true;

  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo ou imagem, pode ser um ícone ou uma imagem personalizada
                Column(
                  children: [
                    Text(
                      "Profress-Gym",
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Image.asset(
                      "lib/imagens/pngg.png",
                      height: 200,
                      width: 200,
                    ),
                  ],
                ),

                SizedBox(height: 30),

                // Formulário de login
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // Campo de E-mail
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "E-mail",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, insira seu e-mail';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 30),

                      // Campo de Senha
                      TextFormField(
                        controller: _senhaController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Senha",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, insira sua senha';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 30),

                      Visibility(
                          visible: !queroEntrar,
                          child: Column(children: [
                            TextFormField(
                              controller: _senhaController,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Confirmar Senha",
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Por favor, Confirmar sua senha';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 30),
                            TextFormField(
                              controller: _senhaController,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Seu nome",
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Por favor, insira seu nome';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 30),
                          ])),
                      // Botão de Login
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            // Aqui você pode implementar a lógica para login
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Login realizado com sucesso')),
                            );
                          }
                        },
                        child: Text((queroEntrar) ? "Entrar" : "Cadastrar"),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50),
                          backgroundColor:
                              const Color.fromARGB(255, 233, 241, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),

                      SizedBox(height: 50),
                      Divider(),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              queroEntrar = !queroEntrar;
                            });
                          },
                          child: Text(
                              style: TextStyle(
                                  backgroundColor:
                                      const Color.fromARGB(255, 127, 157, 248),
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 0, 0, 0)),
                              (queroEntrar)
                                  ? "Cadastre-se"
                                  : "Ja possuo conta")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
