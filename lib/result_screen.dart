import 'package:flutter/material.dart';

Widget dialogResult(
  String setInfoText,
  String resultadoIMC,
  String setEscalaPeso,
  String setInfoInterpretacao,
) {
  return Dialog(
    backgroundColor: const Color(0xFF1D1F33),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 320,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Seu resultado',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              setInfoText.toUpperCase(),
              style: const TextStyle(
                color: Color(0xFFEA1556),
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Text(
              resultadoIMC,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 80,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'IMC $setInfoText',
              style: const TextStyle(
                color: Color(0xFF818596),
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              setEscalaPeso,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              setInfoInterpretacao,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
