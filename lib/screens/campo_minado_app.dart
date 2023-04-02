import 'package:campo_minado__flutter/components/campo_widget.dart';
import 'package:campo_minado__flutter/components/resultado_widget.dart';
import 'package:campo_minado__flutter/components/tabuleiro_widget.dart';
import 'package:campo_minado__flutter/models/campo.dart';
import 'package:campo_minado__flutter/models/explosao_exception.dart';
import 'package:campo_minado__flutter/models/tabuleiro.dart';
import 'package:flutter/material.dart';

class CampoMinadoApp extends StatelessWidget {
  const CampoMinadoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: ResultadoWidget(
          venceu: null,
          onReiniciar: _reiniciar,
        ),
        body: Container(
            child: TabuleiroWidget(
          tabuleiro: Tabuleiro(
            linhas: 15,
            colunas: 15,
            qtdeBombas: 10,
          ),
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
