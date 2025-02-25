import 'package:flutter/material.dart';
import 'package:flutter_application_receitas2/_comum/minhas_cores.dart';
import 'package:flutter_application_receitas2/modelos/exerciciomodelo.dart';
import 'package:flutter_application_receitas2/modelos/sentimentoModelo.dart';

class ExercicioTela extends StatelessWidget {
  final ExercicioModelo exercicioModelo;
  ExercicioTela({super.key, required this.exercicioModelo});

  final List<SentimentoModelo> listasentimentos = [
    SentimentoModelo(
        id: "SE001", sentimento: "Pouca ativacao hj", data: "2022-02-17"),
    SentimentoModelo(
        id: "SE002", sentimento: "Muita ativacao hj", data: "2022-02-17"),
    SentimentoModelo(
        id: "SE001", sentimento: "Pouca ativacao hj", data: "2022-02-17"),
    SentimentoModelo(
        id: "SE002", sentimento: "Muita ativacao hj", data: "2022-02-17")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Column(children: [
          Text(
            exercicioModelo.nome,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Text(
            exercicioModelo.treino,
            style: const TextStyle(fontSize: 15),
          )
        ]),
        centerTitle: true,
        backgroundColor: MinhasCores.azulEscuro,
        elevation: 0,
        toolbarHeight: 72,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(32))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Foi cliclado");
        },
        child: const Icon(Icons.add), // Adiciona um ícone ao botão
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                    child: const Text("Tirar Foto"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                    child: const Text("Enviar Foto"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            const Text("Como fazer?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text(exercicioModelo.comoFazer),
            SizedBox(
              height: 12,
            ),
            Divider(color: Colors.black),
            const Text("Como estou me sentindo?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(listasentimentos.length, (index) {
                  SentimentoModelo sentimentoAgora = listasentimentos[index];
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(sentimentoAgora.sentimento),
                    subtitle: Text(sentimentoAgora.data),
                    leading: const Icon(Icons.double_arrow),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      color: Colors.red,
                      onPressed: () {
                        print("DELETAR $sentimentoAgora.sentindo}");
                      },
                    ),
                  );
                }))
          ],
        ),
      ),
    );
  }
}
