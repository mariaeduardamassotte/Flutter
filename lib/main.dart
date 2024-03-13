import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Nome: Maria Eduarda"),
              Text("Meu filme preferido é:"),
              Center(
                child: Text("Harry Potter"),
              ),
              Text("Minha comida preferida é:"),
              Center(
                child: Text("Macarrão"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("2H3"),
                  Text("Matão"),
                  Text("2024"),
                ],
              )
            ],
          )),
    );
  }
}
