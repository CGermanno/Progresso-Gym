import "package:flutter/material.dart";
import "package:flutter_application_receitas2/_comum/minhas_cores.dart";

InputDecoration getAutenticacaoInputDecoration(String label, {Icon? icon}) {
  return InputDecoration(
    icon: icon,
    label: Text(label),
    fillColor: Colors.white,
    filled: true,
    contentPadding: const EdgeInsets.fromLTRB(18, 8, 16, 8),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide:
          const BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 2),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide: const BorderSide(color: MinhasCores.azulEscuro, width: 4),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide:
          const BorderSide(color: Color.fromARGB(255, 146, 10, 10), width: 4),
    ),
  );
}
