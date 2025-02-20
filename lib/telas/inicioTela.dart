import 'package:flutter/material.dart';
import 'package:flutter_application_receitas2/servicos/autenticacao_servicos.dart';

class Iniciotela extends StatelessWidget {
  const Iniciotela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {
                AutenticacaoServico.deslogar();
              },
            ),
          ],
        ),
      ),
    );
  }
}
