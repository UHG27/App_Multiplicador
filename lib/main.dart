import 'package:flutter/material.dart';
import 'package:mulriplicador_uhg/screens/multiplicador.dart';

void main() {
  runApp(const Multiplicador());
}

class Multiplicador extends StatelessWidget {
  const Multiplicador({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OperationScreen(),
   );
  }
}

