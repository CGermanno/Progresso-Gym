import 'package:device_preview/device_preview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_receitas2/telas/autenticacaoTela.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_receitas2/telas/inicioTela.dart';
import 'firebase_options.dart';

void main() async {
  // Certifique-se de que a função main seja async
  WidgetsFlutterBinding
      .ensureInitialized(); // Garante que o binding esteja pronto antes de chamar o Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: RoteadorTela());
  }
}

class RoteadorTela extends StatelessWidget {
  const RoteadorTela({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Iniciotela(user: snapshot.data!);
        } else {
          return Autenticacaotela();
        }
      },
    );
  }
}
