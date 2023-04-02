import 'package:campo_minado__flutter/components/campo_widget.dart';
import 'package:campo_minado__flutter/components/resultado_widget.dart';
import 'package:campo_minado__flutter/models/campo.dart';
import 'package:campo_minado__flutter/models/explosao_exception.dart';
import 'package:flutter/material.dart';

class CampoMinadoApp extends StatelessWidget {
  const CampoMinadoApp({super.key});

  @override
  Widget build(BuildContext context) {
    Campo vizinho1 = Campo(linha: 1, coluna: 0);
    vizinho1.minar();

    Campo vizinho2 = Campo(linha: 1, coluna: 1);
    vizinho2.minar();

    Campo campo = Campo(linha: 0, coluna: 0);
    campo.adicionarVizinho(vizinho1);
    campo.adicionarVizinho(vizinho2);

    try {
      //campo.minar();
      campo.alternarMarcacao();
    } on ExplosaoException {}

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: ResultadoWidget(
          venceu: null,
          onReiniciar: _reiniciar,
        ),
        body: Container(
            child: CampoWidget(
          campo: campo,
          onAbrir: _abrir,
          onAlternarMarcacao: _alternarMarcacao,
        )),
      ),
    );
  }

  void _reiniciar() {
    print('Reiniciar...');
  }

  void _abrir(Campo c) {
    print('Abrir...');
  }

  void _alternarMarcacao(Campo c) {
    print('marcacao alterada...');
  }
}
