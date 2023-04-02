import 'package:campo_minado__flutter/components/resultado_widget.dart';
import 'package:campo_minado__flutter/components/tabuleiro_widget.dart';
import 'package:campo_minado__flutter/models/campo.dart';
import 'package:campo_minado__flutter/models/tabuleiro.dart';
import 'package:flutter/material.dart';

class CampoMinadoApp extends StatefulWidget {
  const CampoMinadoApp({super.key});

  @override
  State<CampoMinadoApp> createState() => _CampoMinadoAppState();
}

class _CampoMinadoAppState extends State<CampoMinadoApp> {
  bool? _venceu;
  Tabuleiro _tabuleiro = Tabuleiro(
    linhas: 12,
    colunas: 12,
    qtdeBombas: 3,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: ResultadoWidget(
          venceu: _venceu,
          onReiniciar: _reiniciar,
        ),
        body: Container(
            child: TabuleiroWidget(
          tabuleiro: _tabuleiro,
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
