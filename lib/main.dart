//classe aplicacao, responsavel por gereciar todo o nosso app
import 'package:flutter/material.dart';

// O metodo main é onde toda aplicaçao baseada em dart começa
void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    //MaterialApp é responsavel por gerenciar e estabelecer padroes
    //para todas as telas do app. nele temos:
    //configuraçao da tela
    //estilos a serem aplicados na tela (via tema)
    //toda a estruturaçao de tela baseada no material (material.io)
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange)),
      home: HomePage(),
    );
  }
}

//class que representa a tela de aplicativo com todo seu
//layout
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Resumo do Pedido",
                style: textTheme.headlineLarge,
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Text("1x"),
                ),
                const Expanded(
                  child: Text("Banana"),
                ),
                const Text("2,80"),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Text("2x"),
                ),
                const Expanded(
                  child: Text("Morango"),
                ),
                const Text("8,90"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
