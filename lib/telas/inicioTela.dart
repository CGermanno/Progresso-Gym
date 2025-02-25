import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_receitas2/_comum/inicioModal.dart';
import 'package:flutter_application_receitas2/servicos/autenticacao_servicos.dart';
import 'package:flutter_application_receitas2/telas/exercicio.dart';

import '../modelos/exerciciomodelo.dart';

class Iniciotela extends StatefulWidget {
  final User user;
  const Iniciotela({super.key, required this.user});

  @override
  State<Iniciotela> createState() => _IniciotelaState();
}

class _IniciotelaState extends State<Iniciotela> {
  final List<ExercicioModelo> listaExercicios = [
    ExercicioModelo(
      id: "EX001",
      nome: "Supino",
      treino: "Treino A",
      comoFazer: "Empurrar a barra",
    ),
    ExercicioModelo(
      id: "EX002",
      nome: "Remada Baixa Supinada",
      treino: "Treino B",
      comoFazer: "Empurrar para baixo",
    ),
    ExercicioModelo(
      id: "EX003",
      nome: "Remada Baixa Supinada",
      treino: "Treino C",
      comoFazer: "Fazer acordado",
    ),
    ExercicioModelo(
      id: "EX004",
      nome: "Puxada aberta",
      treino: "Treino D",
      comoFazer: "Puxa a barra aberta",
    ),
    ExercicioModelo(
      id: "EX006",
      nome: "Triceps corda",
      treino: "Treino E",
      comoFazer: "Fazer com a acorda",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meus exercícios"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("lib/imagens/cbum.png"),
              ),
              accountName: Text((widget.user.displayName != null)
                  ? widget.user.displayName!
                  : ""),
              accountEmail: Text(widget.user.email!),
            ),
            ListTile(
              title: const Text("Faz o PIX"),
              leading: const Icon(Icons.monetization_on),
              dense: true,
              onTap: () {},
            ),
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          mostrarModalInicio(context);
        },
      ),
      body: ListView(
        children: List.generate(listaExercicios.length, (index) {
          ExercicioModelo exercicioModelo = listaExercicios[index];
          return ListTile(
            title: Text(exercicioModelo.nome),
            subtitle: Text(exercicioModelo.treino),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExercicioTela(
                      exercicioModelo: exercicioModelo,
                    ),
                  ));
            },
          );
        }),
      ),
    );
  }
}
