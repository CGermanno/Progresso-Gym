import 'package:flutter/material.dart';

mostrarSnackbar(
    {required BuildContext context,
    required String texto,
    bool isError = true}) {
  SnackBar snackBar = SnackBar(
    content: Text(texto),
    backgroundColor: (isError) ? Colors.red : Colors.green,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    duration: const Duration(seconds: 4),
    action: SnackBarAction(
      label: 'OK',
      textColor: Colors.white,
      onPressed: () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      },
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
