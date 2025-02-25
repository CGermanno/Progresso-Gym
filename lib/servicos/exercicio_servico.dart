import "package:cloud_firestore/cloud_firestore.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter_application_receitas2/modelos/exerciciomodelo.dart";

class ExercicioServico {
  String userId;
  ExercicioServico() : userId = FirebaseAuth.instance.currentUser!.uid;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> adicionarExercicio(ExercicioModelo exercicioModelo) async {
    return _firestore
        .collection(userId)
        .doc(exercicioModelo.id)
        .set(exercicioModelo.toMap());
  }
}
