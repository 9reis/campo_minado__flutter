import 'package:campo_minado__flutter/components/campo_widget.dart';
import 'package:campo_minado__flutter/models/campo.dart';
import 'package:campo_minado__flutter/models/tabuleiro.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class TabuleiroWidget extends StatelessWidget {
  const TabuleiroWidget(
      {Key? key,
      required this.tabuleiro,
      required this.onAbrir,
      required this.onAlternarMarcacao})
      : super(key: key);

  final Tabuleiro tabuleiro;
  final void Function(Campo) onAbrir;
  final void Function(Campo) onAlternarMarcacao;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: tabuleiro.colunas,
        children: tabuleiro.campos.map((c) {
          return CampoWidget(
            campo: c,
            onAbrir: onAbrir,
            onAlternarMarcacao: onAlternarMarcacao,
          );
        }).toList(),
      ),
    );
  }
}
