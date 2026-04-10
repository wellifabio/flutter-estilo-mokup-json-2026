import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> produtos = [];
  int indice = 0;

  @override
  void initState() {
    super.initState();
    carrearMockupJSON();
  }

  Future<void> carrearMockupJSON() async {
    String dados = await rootBundle.loadString('assets/mockup/produtos.json');
    setState(() {
      produtos = json.decode(dados);
    });
  }

  void vaiEvorta(int controle) {
    if (controle == 1) {
      setState(() {
        indice++;
      });
    } else {
      setState(() {
        indice--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Papelaria produtos")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(produtos.isNotEmpty ? produtos[indice]['nome'] : "0"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: indice > 0 ? () => vaiEvorta(0) : null,
                  child: Text("Anterior"),
                ),
                ElevatedButton(
                  onPressed: indice < produtos.length - 1
                      ? () => vaiEvorta(1)
                      : null,
                  child: Text("Proximo"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
