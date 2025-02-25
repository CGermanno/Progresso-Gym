import 'package:flutter/material.dart';
import 'package:flutter_application_receitas2/_comum/minhas_cores.dart';
import 'package:flutter_application_receitas2/componentes/decoracao_campo_autentificacao.dart';
import 'package:flutter_application_receitas2/servicos/exercicio_servico.dart';

mostrarModalInicio(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: const Color.fromARGB(255, 73, 122, 187),
    isDismissible: false,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    builder: (context) {
      return const ExercicioModal();
    },
  );
}

class ExercicioModal extends StatefulWidget {
  const ExercicioModal({super.key});

  @override
  State<ExercicioModal> createState() => _ExercicioModalState();
}

class _ExercicioModalState extends State<ExercicioModal> {
  TextEditingController _nomecontroller = TextEditingController();
  TextEditingController _treinocontroller = TextEditingController();
  TextEditingController _anotacoescontroller = TextEditingController();
  TextEditingController _sentindocontroller = TextEditingController();

  bool iscarregando = false;
  ExercicioServico _exercicioServico = ExercicioServico();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      height: MediaQuery.of(context).size.height * 0.9,
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Adicionar exercícios",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close, color: Colors.white),
                    )
                  ],
                ),
                const Divider(),
                Column(
                  children: [
                    SizedBox(height: 16),
                    TextFormField(
                      controller: _nomecontroller,
                      decoration: getAutenticacaoInputDecoration(
                        "Qual o nome do exercíco?",
                        icon: Icon(
                          Icons.label_important_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _treinocontroller,
                      decoration: getAutenticacaoInputDecoration(
                        "Qual treino pertence?",
                        icon: Icon(
                          Icons.class_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _anotacoescontroller,
                      decoration: getAutenticacaoInputDecoration(
                        "Anotações",
                        icon: Icon(
                          Icons.notes_sharp,
                          color: Colors.white,
                        ),
                      ),
                      maxLines: null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _sentindocontroller,
                      decoration: getAutenticacaoInputDecoration(
                        "Como estou sentindo?",
                        icon: Icon(
                          Icons.sentiment_very_satisfied_sharp,
                          color: Colors.white,
                        ),
                      ),
                      maxLines: null,
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                enviarClicado();
              },
              child: (iscarregando)
                  ? const SizedBox(
                      height: 16,
                      width: 16,
                      child: CircularProgressIndicator(
                          color: Color.fromARGB(255, 121, 149, 241)),
                    )
                  : const Text("Criar exercício"),
            ),
          ],
        ),
      ),
    );
  }

  enviarClicado() {
    setState(() {
      iscarregando = true;
    });

    //aqui
  }
}
