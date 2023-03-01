import 'package:flutter/material.dart';

class OperationScreen extends StatefulWidget {
  const OperationScreen({super.key});

  @override
  State<OperationScreen> createState() => _OperationScreenState();
}

class _OperationScreenState extends State<OperationScreen> {
  int contador = 0;
  int contador2 = 0;
  int resul = 0;

  void incrementar() {
    contador++;
    setState(() {});
  }

  void decrementar() {
    contador--;
    setState(() {});
  }

  void reiniciar() {
    contador = 0;
    setState(() {});
  }

//2do numero
  void incrementar2() {
    contador2++;
    setState(() {});
  }

  void decrementar2() {
    contador2--;
    setState(() {});
  }

  void reiniciar2() {
    contador2 = 0;
    setState(() {});
  }

//Resultado
  int resultado() {
    return contador * contador2;
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle estiloTexto = TextStyle(
      fontSize: 30,
      color: Color.fromARGB(255, 255, 255, 255),
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color.fromARGB(255, 15, 182, 162),
        title: const Text('Multiplcador'),
        elevation: 10,
      ),
      backgroundColor: Color.fromARGB(255, 15, 182, 162),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //primer numero
        children: [
          const Text(
            '',
            style: estiloTexto,
          ),
          Text('$contador', style: estiloTexto),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            FloatingActionButton(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
              onPressed: () => decrementar(),
              child: const Icon(Icons.remove_circle_outline),
            ),
            FloatingActionButton(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
              onPressed: () => reiniciar(),
              child: const Icon(Icons.restaurant_menu_rounded),
            ),
            FloatingActionButton(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
              onPressed: () => incrementar(),
              child: const Icon(Icons.add_circle),
            ),
          ]),
          const Text(
            '',
            style: estiloTexto,
          ),
          Text('$contador2', style: estiloTexto),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            FloatingActionButton(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
              onPressed: () => decrementar2(),
              child: const Icon(Icons.remove_circle_outline),
            ),
            FloatingActionButton(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
              onPressed: () => reiniciar2(),
              child: const Icon(Icons.restaurant_menu_rounded),
            ),
            FloatingActionButton(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
              onPressed: () => incrementar2(),
              child: const Icon(Icons.add_circle),
            ),
          ]),
          const Text(
            'Resultado : ',
            style: estiloTexto,
          ),
          Text(
            '${resultado()}',
            style: estiloTexto,
          )
        ],
      )),
);
}
}